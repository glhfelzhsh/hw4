w = fspecial('gaussian',[3,3],1.5);
%replicate:图像大小通过赋值外边界的值来扩展
%symmetric 图像大小通过沿自身的边界进行镜像映射扩展
img101 = imfilter(img1,w,'replicate');
w = fspecial('gaussian',[5,5],1.5);
img102 = imfilter(img1,w,'replicate');
w = fspecial('gaussian',[7,7],1.5);
img103 = imfilter(img1,w,'replicate');
w = fspecial('gaussian',[3,3],1.5);
img201 = imfilter(img2,w,'replicate');
w = fspecial('gaussian',[5,5],1.5);
img202 = imfilter(img2,w,'replicate');
w = fspecial('gaussian',[7,7],1.5);
img203 = imfilter(img2,w,'replicate');
subplot(2,2,1)
imshow(img1)
subplot(2,2,2)
imshow(img101)
subplot(2,2,3)
imshow(img102)
subplot(2,2,4)
imshow(img103)
p=getframe(gcf);
imwrite(p.cdata,['t2test1gs.jpg']);
subplot(2,2,1)
imshow(img2)
subplot(2,2,2)
imshow(img201)
subplot(2,2,3)
imshow(img202)
subplot(2,2,4)
imshow(img203)
p=getframe(gcf);
imwrite(p.cdata,['t2test2gs.jpg']);