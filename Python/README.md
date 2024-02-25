# Malaria Detection Model
This model is designed to detect malaria in red blood cell images. It has been trained on a dataset containing 27,558 images of malaria-infected and uninfected red blood cells. The dataset consists of two folders - one for malaria-infected cells and another for uninfected cells.

# Dataset Details
The dataset used for training is sourced from the official NIH (National Institutes of Health) website: NIH Malaria Datasets. 
The dataset contains 2 folders - malaria infected and uninfected red blood cells- and a total of 27,558 images

# Model Architecture
The model architecture is a convolutional neural network (CNN) designed to analyze and classify features in the red blood cell images. It comprises convolutional layers for feature extraction, max-pooling layers for down-sampling, dense layers for classification, and a sigmoid activation function for binary classification.

# Instructions for Usage
To use the model for malaria detection:
* Clone or download the repository.
* Download the dataset from [here](https://ceb.nlm.nih.gov/repositories/malaria-datasets/).
* Ensure the necessary dependencies are installed (e.g., TensorFlow, PIL).
* Load the trained model using the provided weights.
* Preprocess new images for prediction by resizing and normalizing pixel values.
* Utilize the model to predict whether an input image contains malaria or is uninfected.

# Acknowledgements
The dataset used for training is credited to the official NIH website. The repository expresses gratitude to the NIH for providing a valuable resource for malaria detection research.  


