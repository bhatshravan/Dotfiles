package bs.inc.doublehelix;

import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Bundle;
import android.app.Activity;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;

import com.android.volley.AuthFailureError;
import com.android.volley.NetworkResponse;
import com.android.volley.Request;
import com.android.volley.RequestQueue;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.VolleyLog;
import com.android.volley.toolbox.JsonObjectRequest;
import com.android.volley.toolbox.Volley;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.io.DataOutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;

import androidx.appcompat.app.AppCompatActivity;
import androidx.recyclerview.widget.GridLayoutManager;


public class LoginActivity extends AppCompatActivity {

    Button login;

    String loginURL="https://localhost:8080/Login/Test";

    RequestQueue requestQueue;
    private GridLayoutManager lLayout;


    JSONObject jsonObject;
    JSONArray ja;
    JsonObjectRequest jor;
    String v="",url="";

    JSONObject jsonBody = new JSONObject();

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.login);

        Button lgnbtn = findViewById(R.id.login_btn);

        lgnbtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                TextView email= findViewById(R.id.userid);
                TextView pass = findViewById(R.id.password);

                String em = email.getText().toString().trim();
                String password = pass.getText().toString();

                sendPost2();
                //getLogin();
                // startActivity(new Intent(LoginActivity.this,MainActivity.class));
            }
        });
    }

    TextView urlk;

    void getLogin(){

        urlk = findViewById(R.id.url);

        String uurl = urlk.getText().toString();

        requestQueue = Volley.newRequestQueue(LoginActivity.this);

        try {
            jsonBody.put("Title", "Android Volley Demo");
            jsonBody.put("Author", "BNK");
        }
        catch (JSONException e){
            Toast.makeText(LoginActivity.this,"Error making JSON",Toast.LENGTH_LONG).show();
        }
        final String requestBody = jsonBody.toString();

        login = findViewById(R.id.login_btn);

        jor = new JsonObjectRequest(Request.Method.POST, uurl, null,
                new Response.Listener<JSONObject>() {
                    @Override
                    public void onResponse(JSONObject response) {
                        Toast.makeText(LoginActivity.this,response.toString(),Toast.LENGTH_SHORT).show();
                    }
                },
                new Response.ErrorListener() {
                    @Override
                    public void onErrorResponse(VolleyError error) {
                        NetworkResponse response = error.networkResponse;
                        if(response != null && response.data != null){
                            switch(response.statusCode){
                                case 400:
                                    v="There was an error connecting to our servers.Please check your connection and refresh.";
                                    break;
                                case 500:
                                case 501:
                                case 502:
                                case 503:
                                case 504:
                                case 505:
                                    v="There was an error in our servers,please reload the page.\nSorry for the inconvienence";
                                    break;
                            }
                            //Additional cases
                        }
                    }

                }

        ){

            @Override
            protected Map<String,String> getParams() {
                Map<String, String> params = new HashMap<String, String>();
                TextView email= findViewById(R.id.userid);
                TextView pass = findViewById(R.id.password);

                String em = email.getText().toString().trim();
                String password = pass.getText().toString();

                params.put("user", em);
                params.put("pass", password);

                return params;
            }
        };
        jor.setShouldCache(false);
        requestQueue.add(jor);


    }
    String msg;

    public void sendPost() {
        Thread thread = new Thread(new Runnable() {
            @Override
            public void run() {
                try {
                    URL url = new URL("http://192.168.0.107:8080/Login/Test");
                    HttpURLConnection conn = (HttpURLConnection) url.openConnection();
                    conn.setRequestMethod("POST");
                    conn.setRequestProperty("Content-Type", "application/json;charset=UTF-8");
                    conn.setRequestProperty("Accept","application/json");
                    conn.setDoOutput(true);
                    conn.setDoInput(true);

                    JSONObject jsonParam = new JSONObject();
                    jsonParam.put("timestamp", 1488873360);

                    TextView email= findViewById(R.id.userid);
                    TextView pass = findViewById(R.id.password);

                    String em = email.getText().toString().trim();
                    String password = pass.getText().toString();

                    jsonParam.put("user", em);
                    jsonParam.put("pass", password);

                    Log.i("JSON", jsonParam.toString());
                    DataOutputStream os = new DataOutputStream(conn.getOutputStream());
                    //os.writeBytes(URLEncoder.encode(jsonParam.toString(), "UTF-8"));
                    os.writeBytes(jsonParam.toString());

                    os.flush();
                    os.close();

                    Log.i("STATUS", String.valueOf(conn.getResponseCode()));
                    Log.i("MSG" , conn.getResponseMessage());
                    msg = conn.getRequestMethod();



                    conn.disconnect();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        });

        thread.start();
    }

    void sendPost2(){

        requestQueue = Volley.newRequestQueue(LoginActivity.this);
        final String URL = "http://192.168.0.107:8080/Login/Test";
// Post params to be sent to the server
        HashMap<String, String> params = new HashMap<String, String>();
        params.put("token", "token_value");
        params.put("login_id", "login_id_value");
        params.put("UN", "username");
        params.put("PW", "password");

        JsonObjectRequest request_json = new JsonObjectRequest(URL, new JSONObject(params),
                new Response.Listener<JSONObject>() {
                    @Override
                    public void onResponse(JSONObject response) {
                        try {
                            //Process os success response
                            Log.i("TAG", response.toString());
                            Toast.makeText(LoginActivity.this,response.toString(),Toast.LENGTH_SHORT).show();
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    }
                }, new Response.ErrorListener() {
            @Override
            public void onErrorResponse(VolleyError error) {
                VolleyLog.e("Error: ", error.getMessage());
                Toast.makeText(LoginActivity.this,"Could not resolve url",Toast.LENGTH_SHORT).show();
            }
        });

        request_json.setShouldCache(false);
        requestQueue.add(request_json);
    }


    private boolean isNetworkAvailable() {
        ConnectivityManager connectivityManager = (ConnectivityManager) getSystemService( Activity.CONNECTIVITY_SERVICE );
        NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }
}