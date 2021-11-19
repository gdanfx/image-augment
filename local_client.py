import numpy as np
import PIL.Image
import json
import tensorflow as tf
import os
import requests

def display_image(image : tf.Tensor) -> None:
    """
    Display image
    Args:
        image: image (encoded image bytes) to display. A Tensor of type string. 0-D.
    Returns:
        None
    """
    image = tf.io.decode_image(image)
    image = tf.cast(image, tf.uint8)
    image = PIL.Image.fromarray(image.numpy())
    image.show()

folder="images/flowers/"
#load random image from folder
filename=np.random.choice(np.array(os.listdir(folder)))
#load image
im=tf.io.read_file(folder+filename)
display_image(im)

# convert image to array and pack it into json
img = tf.io.decode_image(im)
img=img.numpy()
data = json.dumps({"signature_name": "serving_default", "instances": img.tolist()})

headers = {"content-type": "application/json"}

json_response = requests.post('http://localhost:8501/v1/models/augment_num:predict', data=data, headers=headers)

# let's make sure we didn't get an error
if json_response.status_code != 200:
    print(json_response.text)
    raise RuntimeError("Error while calling TensorFlow Serving model")

img = np.array(json.loads(json_response.text)['predictions'])
image = tf.io.encode_jpeg(img)

display_image(image)
