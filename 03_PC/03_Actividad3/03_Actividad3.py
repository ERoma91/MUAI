import numpy as np
import cv2
from matplotlib import pyplot as pl
img = cv2.imread('PackingHouse.jpeg')
imgGray = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)
ret, thresh = cv2.threshold(imgGray, 0, 255, cv2.THRESH_BINARY + cv2.THRESH_OTSU)

pl.imshow(thresh)

