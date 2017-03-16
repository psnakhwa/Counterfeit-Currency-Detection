package com.example.currency;

import java.io.IOException;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.util.EntityUtils;
import android.app.AlertDialog;
import android.content.DialogInterface;
import com.example.currency.AndroidMultiPartEntity.ProgressListener;



import android.app.Activity;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;

public class Result1 extends Activity {
	
	long totalSize = 0;
	private static final String TAG = Pic1000.class.getSimpleName();
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_result1);
		
		
	Button	btnUpload = (Button) findViewById(R.id.btnUpload1);
		btnUpload.setOnClickListener(new View.OnClickListener() {

			@Override
			public void onClick(View v) {
				// uploading the file to server
				new UploadFileToServer().execute();
			}
		});

	}
	

	

/**
 * Uploading the file to server
 * */
class UploadFileToServer extends AsyncTask<Void, Integer, String> {
	
	

	@Override
	protected void onProgressUpdate(Integer... progress) {;
	}

	@Override
	protected String doInBackground(Void... params) {
		return uploadFile();
	}

	@SuppressWarnings("deprecation")
	private String uploadFile() {
		String responseString = null;

		HttpClient httpclient = new DefaultHttpClient();
		HttpPost httppost = new HttpPost(Config.FILE_UPLOAD_URL);

		try {
			AndroidMultiPartEntity entity = new AndroidMultiPartEntity(
					new ProgressListener() {

						@Override
						public void transferred(long num) {
							
							float totalSize=0;
							publishProgress((int) ((num / (float) totalSize) * 100));
						}
					});

			
			

			
			httppost.setEntity(entity);

			// Making server call
			HttpResponse response = httpclient.execute(httppost);
			HttpEntity r_entity = response.getEntity();

			int statusCode = response.getStatusLine().getStatusCode();
			if (statusCode == 200) {
				// Server response
				responseString = EntityUtils.toString(r_entity);
			} else {
				responseString = "Error occurred! Http Status Code: "
						+ statusCode;
			}

		} catch (ClientProtocolException e) {
			responseString = e.toString();
		} catch (IOException e) {
			responseString = e.toString();
		}

		return responseString;

	}

	@Override
	protected void onPostExecute(String result) {
		Log.e(TAG, "Response from server: " + result);

		// showing the server response
		showAlert(result);
		super.onPostExecute(result);
	}
}
	
	
	/**
	 * Method to show alert dialog
	 * */
	public void showAlert(String message) {
		AlertDialog.Builder builder = new AlertDialog.Builder(this);
		builder.setMessage(message).setTitle("Response from Servers")
				.setCancelable(false)
				.setPositiveButton("OK", new DialogInterface.OnClickListener() {
					public void onClick(DialogInterface dialog, int id) {
						Intent tt = new Intent(Result1.this, MainActivity.class);
						startActivity(tt);
						finish();
					}
				});
		AlertDialog alert = builder.create();
		alert.show();
	}


	}

	





