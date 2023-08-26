import cv2


if __name__ == '__main__':
    # read an image
    img = cv2.imread('./canonical_0.png')
    # convert to grayscale
    gray = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)
    # reverse all colors
    rev_img = 255 - img
    # blur the image
    blur_img = cv2.GaussianBlur(img, (5, 5), 0)

    # save the image
    cv2.imwrite('./canonical_0_gray.png', gray)
    cv2.imwrite('./canonical_0_rev.png', rev_img)
    cv2.imwrite('./canonical_0_blur.png', blur_img)