# image-augment

Implementation of a simple "image augmentation service" that can receive an image,
augments the received image (randomly flips, crops, and provide random saturation and hue shifts.
and returns the augmented image.


The service is running on port 8501 via TF Serving docker
### We can try it out via existing colab with backend running GCP VM instance
here is the colab link:
[https://colab.research.google.com/drive/1CiyZg18iRVcuksOumP9TZe0ZjCXg3H58?usp=sharing](https://colab.research.google.com/drive/1CiyZg18iRVcuksOumP9TZe0ZjCXg3H58?usp=sharing)

## Or set it up run it locally

### Install dependencies

```bash
pip3 install tensorflow
```
### Install docker if needed

```bash
sudo apt-get update && sudo apt-get install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update
apt-cache policy docker-ce
sudo apt-get install -y docker-ce
```

### Build docker image

```bash
docker build -t augment .
```

### Run docker image

```bash
docker run -p 8501:8501 -t image-augment
```

### Let's download test images and try local client

```bash
# if folder images doesn't exist download them
if [ ! -d "images" ]; then
    ./download_images.sh
fi
python local_client.py
```


### Stop docker image

```bash
docker stop $(docker ps -q)
```
