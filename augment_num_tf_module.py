import tensorflow as tf
class Augment(tf.Module):
    def __init__(self) -> None:
        super(Augment, self).__init__()
    
    @tf.function(input_signature=[tf.TensorSpec(shape=[None, None, 3], dtype=tf.uint8)])
    def __call__(self, image : tf.Tensor) -> tf.Tensor:
        """
        Augment image
        Args:
            image: image to augment
        Returns:
            image: augmented image
        """
        image = tf.image.random_flip_left_right(image)
        image = tf.image.random_flip_up_down(image)
        image = tf.image.random_saturation(image, 0.8, 1.2)
        image = tf.image.random_hue(image, 0.2)
        #random crop part of the image
        # define w, h of the crop
        half_val_w = tf.cast(tf.shape(image)[0] / 2, tf.int32)
        half_val_h = tf.cast(tf.shape(image)[1] / 2, tf.int32)
        # w is the width of the crop
        # h is the height of the crop
        w=tf.random.uniform(shape=[], minval=half_val_w, maxval=tf.shape(image)[0], dtype=tf.int32)
        h=tf.random.uniform(shape=[], minval=half_val_h, maxval=tf.shape(image)[1], dtype=tf.int32)
        # define the crop
        image = tf.image.random_crop(image, [w, h, 3])        
        return image



#create Transform object
transform = Augment()
# save module Augment to disk
tf.saved_model.save(transform, "./augment_num/1")
