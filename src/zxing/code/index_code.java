package zxing.code;

import java.io.File;
import java.nio.file.Path;
import java.util.HashMap;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.MultiFormatWriter;
import com.google.zxing.client.j2se.MatrixToImageWriter;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel;

public class index_code {
	public void zx() {
		System.out.println("首页二维码生成开始");
		int width=300;
		int height=300;
		String format="png";
		String cointent="www.baidu.com";
		HashMap hints=new HashMap();
	
		hints.put(EncodeHintType.CHARACTER_SET,"utf-8");
		hints.put(EncodeHintType.ERROR_CORRECTION,ErrorCorrectionLevel.M);
		
		try {
			BitMatrix bitmatrix=new MultiFormatWriter().encode(cointent, BarcodeFormat.QR_CODE, width, height, hints);
			Path file=new File("E:/code/img1.png").toPath();
			MatrixToImageWriter.writeToPath(bitmatrix, format, file);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println("首页二维码生成成功");
	}

}
