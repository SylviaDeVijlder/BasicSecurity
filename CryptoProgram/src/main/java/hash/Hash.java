package hash;

import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import java.io.*;
import java.security.*;

/**
 * Created by kimprzybylski on 23/03/17.
 */
public class Hash {
    private PrivateKey privateKey;
    private String plaintext;

    public Hash(PrivateKey privateKey, String startFile) throws InvalidKeyException, NoSuchAlgorithmException, SignatureException, BadPaddingException, IllegalBlockSizeException, NoSuchPaddingException, IOException {
        this.privateKey = privateKey;
        plaintext = getStringFromFile(startFile);

        writeToFile("HashedFile/File_3",getHash());
    }

    public byte[] getHash() throws NoSuchAlgorithmException, InvalidKeyException, SignatureException, NoSuchPaddingException, BadPaddingException, IllegalBlockSizeException {
        // Compute signature
        Signature instance = Signature.getInstance("SHA1withRSA");
        instance.initSign(privateKey);
        instance.update((plaintext).getBytes());
        byte[] signature = instance.sign();

// Compute digest
        MessageDigest sha1 = MessageDigest.getInstance("SHA1");
        byte[] digest = sha1.digest(signature);

// Encrypt digest
        Cipher cipher = Cipher.getInstance("RSA");
        cipher.init(Cipher.ENCRYPT_MODE, privateKey);
        byte[] cipherText = cipher.doFinal(digest);
        return cipherText;
    }

    private String getStringFromFile(String fileName) throws IOException {
        InputStream is = new FileInputStream(fileName);
        BufferedReader buf = new BufferedReader(new InputStreamReader(is));
        String line = buf.readLine();
        StringBuilder sb = new StringBuilder();
        while(line != null){
            sb.append(line).append("\n");
            line = buf.readLine();
        }
        return sb.toString();
   }

    public void writeToFile(String path, byte[] key) throws IOException
    {
        File file = new File(path);
        file.getParentFile().mkdirs();

        FileOutputStream fileOutputStream = new FileOutputStream(file);
        fileOutputStream.write(key);
        fileOutputStream.flush();
        fileOutputStream.close();
    }
}
