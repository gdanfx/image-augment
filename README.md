# image-augment

Implementation of a simple "image augmentation service" that can receive an image,
augments the received image (randomly flips, crops, and provide random saturation and hue shifts.
and returns the augmented image.

The service is running on port 8501.

## License

This code is in the public domain.

## Dependencies

* tensorflow==2.7.0

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

### Run docker image in background

```bash
docker run -p 8501:8501 -d image-augment
```

### Stop docker image

```bash
docker stop $(docker ps -q)
```
