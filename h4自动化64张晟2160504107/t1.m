img1=imread('test1.pgm');
img2=imread('test2.tif');
img11=medfilt2(img1,[3 3]);
img12=medfilt2(img1,[5 5]);
img13=medfilt2(img1,[7 7]);
img21=medfilt2(img2,[3 3]);
img22=medfilt2(img2,[5 5]);
img23=medfilt2(img2,[7 7]);
w = fspecial('gaussian',[3,3],1);
%replicate:图像大小通过赋值外边界的值来扩展
%symmetric 图像大小通过沿自身的边界进行镜像映射扩展
img101 = imfilter(img1,w,'replicate');
w = fspecial('gaussian',[5,5],1);
img102 = imfilter(img1,w,'replicate');
w = fspecial('gaussian',[7,7],1);
img103 = imfilter(img1,w,'replicate');
w = fspecial('gaussian',[3,3],1);
img201 = imfilter(img2,w,'replicate');
w = fspecial('gaussian',[5,5],1);
img202 = imfilter(img2,w,'replicate');
w = fspecial('gaussian',[7,7],1);
img203 = imfilter(img2,w,'replicate');
subplot(2,2,1)
imshow(img1)
subplot(2,2,2)
imshow(img11)
subplot(2,2,3)
imshow(img12)
subplot(2,2,4)
imshow(img13)
p=getframe(gcf);
imwrite(p.cdata,['t1test1med.jpg']);
subplot(2,2,1)
imshow(img1)
subplot(2,2,2)
imshow(img101)
subplot(2,2,3)
imshow(img102)
subplot(2,2,4)
imshow(img103)
p=getframe(gcf);
imwrite(p.cdata,['t1test1gs.jpg']);
subplot(2,2,1)
imshow(img2)
subplot(2,2,2)
imshow(img21)
subplot(2,2,3)
imshow(img22)
subplot(2,2,4)
imshow(img23)
p=getframe(gcf);
imwrite(p.cdata,['t1test2med.jpg']);
subplot(2,2,1)
imshow(img2)
subplot(2,2,2)
imshow(img201)
subplot(2,2,3)
imshow(img202)
subplot(2,2,4)
imshow(img203)
p=getframe(gcf);
imwrite(p.cdata,['t1test2gs.jpg']);