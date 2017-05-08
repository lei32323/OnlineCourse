package com.oc.util;

import java.awt.Rectangle;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Iterator;

import javax.imageio.ImageIO;
import javax.imageio.ImageReadParam;
import javax.imageio.ImageReader;
import javax.imageio.stream.ImageInputStream;

import sun.misc.BASE64Decoder;

import com.sun.image.codec.jpeg.JPEGCodec;
import com.sun.image.codec.jpeg.JPEGEncodeParam;
import com.sun.image.codec.jpeg.JPEGImageEncoder;
	/**
	 * 上传的图片进行截取，压缩处理
	 * @author hwy
	 *
	 */
	public class ImageUtil {

	     /**
	     * 长高等比例缩小图片
	     * @param srcImagePath 读取图片路径
	     * @param toImagePath 写入图片路径
	     * @param ratio 缩小比例
	     * @throws IOException
	     */
	    public static void reduceImageByRatio(String srcImagePath,String toImagePath,float ratio) throws IOException{
	        FileOutputStream out = null;
	        try{
	            //读入文件  
	            File file = new File(srcImagePath);  
	            // 构造Image对象  
	            BufferedImage src = javax.imageio.ImageIO.read(file);  
	            int width = src.getWidth();  
	            int height = src.getHeight();  
	            // 缩小边长 
	            BufferedImage tag = new BufferedImage((int)(width / ratio), (int)(height / ratio), BufferedImage.TYPE_INT_RGB);  
	            // 绘制 缩小后的图片 
	            tag.getGraphics().drawImage(src, 0, 0, (int)(width / ratio), (int)(height / ratio), null);  
	            out = new FileOutputStream(toImagePath);  
	            JPEGImageEncoder encoder = JPEGCodec.createJPEGEncoder(out); 
	            JPEGEncodeParam param = encoder.getDefaultJPEGEncodeParam(tag);
	            param.setQuality(0.75f, true);// 默认0.75 
	            encoder.setJPEGEncodeParam(param);
	            encoder.encode(tag);
	        }catch(Exception e){
	            e.printStackTrace();
	        }finally{
	            if(out != null){
	                out.close();  
	            }
	            out = null;
	            System.gc();
	        }
	    }

	    /**
	     * 缩小图片到固定长高
	     * @param srcImagePath 读取图片路径
	     * @param toImagePath 写入图片路径
	     * @param width 缩小后图片宽度
	     * @param height 缩小后图片长度
	     * @throws IOException
	     */
	    public static void reduceImageByWidthHeight(String srcImagePath, String toImagePath, int width, int height) throws IOException{
	        FileOutputStream out = null;
	        try{
	            //读入文件  
	            File file = new File(srcImagePath);  
	            // 构造Image对象 
	            BufferedImage src = javax.imageio.ImageIO.read(file);  
	            // 缩小边长 
	            BufferedImage tag = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);  
	            // 绘制缩小后的图片 
	            tag.getGraphics().drawImage(src, 0, 0, width, height, null);  
	            out = new FileOutputStream(toImagePath);  
	            JPEGImageEncoder encoder = JPEGCodec.createJPEGEncoder(out); 
	            JPEGEncodeParam param = encoder.getDefaultJPEGEncodeParam(tag);
	            param.setQuality(1f, true);// 默认0.75 
	            encoder.setJPEGEncodeParam(param);
	            encoder.encode(tag);
	        }catch(Exception e){
	            e.printStackTrace();
	        }finally{
	            if(out != null){
	                out.close();  
	            }
	            out = null;
	            System.gc();
	        }
	    }
	    /**
	     * 剪切图片
	     * @param srcpath
	     * @param subpath
	     * @param x
	     * @param y
	     * @param width
	     * @param height
	     * @throws IOException
	     */
	    public static void cutImage(String srcpath,String subpath,int x,int y,int width,int height) throws IOException {  
	        FileInputStream is = null;  
	        ImageInputStream iis = null;  
	        try {  
	            // 读取图片文件  
	            is = new FileInputStream(srcpath);  
	            Iterator<ImageReader> it = ImageIO.getImageReadersByFormatName("jpg");  
	            ImageReader reader = it.next();  
	            // 获取图片流  
	            iis = ImageIO.createImageInputStream(is);  
	            reader.setInput(iis, true);  
	            ImageReadParam param = reader.getDefaultReadParam();  
	            // 图片裁剪区域。Rectangle 指定了坐标空间中的一个区域，通过 Rectangle 对象的左上顶点的坐标(x，y)、宽度和高度可以定义这个区域。 
	            Rectangle rect = new Rectangle(x, y, width, height);  
	            // 提供一个 BufferedImage，将其用作解码像素数据的目标。  
	            param.setSourceRegion(rect);  
	            BufferedImage bi = reader.read(0, param);  
	            // 保存新图片  
	            ImageIO.write(bi, "jpg", new File(subpath));  
	        }finally {  
	            if(is != null){
	                is.close(); 
	            }
	            if(iis != null){  
	                iis.close();
	            }
	        }  
	    }  

	    /**
	     * 获取图片缩放尺寸
	     * @param srcImagePath
	     * @return
	     * @throws IOException
	     */
	    public static float getScaleCutImage(String srcImagePath) throws IOException{
	        //读入文件  
	        File file = new File(srcImagePath);  
	        // 构造Image对象  
	        BufferedImage src = javax.imageio.ImageIO.read(file);  
	        int width = src.getWidth();  
	        int height = src.getHeight();
	        float scale = 0f;
	        if(width >= height){
	            scale = (float)width/200;
	        }else if(width < height){
	            scale = (float)height/200;
	        }
	        return scale;
	    }

	    /**
	     * @Descriptionmap 对字节数组字符串进行Base64解码并生成图片
	     * @param base64 图片Base64数据
	     * @param path 图片路径
	     * @return
	     */
	    public static boolean base64ToImage(String base64, String path) {
	        // 图像数据为空
	        if(base64 == null){
	            return false;
	        }
	        if(base64.indexOf("base64") != -1){
	            base64 = base64.substring(base64.indexOf("base64")+7, base64.length());
	        }
	        // Base64解码
	        BASE64Decoder decoder = new BASE64Decoder();
	        try{
	            byte[] bytes = decoder.decodeBuffer(base64);
	            for(int i=0;i<bytes.length;i++){
	                // 调整异常数据
	                if(bytes[i] < 0){
	                    bytes[i] += 256;
	                }
	            }
	            // 生成jpeg图片
	            OutputStream out = new FileOutputStream(path);
	            out.write(bytes);
	            out.flush();
	            out.close();
	            //非jpg格式的图片强转为jpg
	            if(base64.indexOf("image/png") == -1){
	                imageToJPG(path, path);
	            }
	            return true;
	        }catch(Exception e){
	            e.printStackTrace();
	            return false;
	        }
	    }

	    /**
	     * 将图片格式转成jpg的支持( GIF->JPG GIF->PNG PNG->GIF(X) PNG->JPG)
	     * @param src1
	     * @param result
	     * @throws IOException
	     */
	    public static void imageToJPG(String src1,String result) throws IOException{
	        File f = new File(src1);  
	        f.canRead();  
	        BufferedImage src = ImageIO.read(f);
	        ImageIO.write(src, "jpg", new File(result));
	    }

}
