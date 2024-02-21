using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Security.Cryptography;
using System.Text;

namespace Movie_Spooky.BackendCode
{
    public class GenerateKeys
    {
        public static string generate_key(int size)
        {
            char[] chars = new char[62];
            chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ123456789".ToCharArray();
            byte[] data = new byte[size];

            using (RNGCryptoServiceProvider crypto = new RNGCryptoServiceProvider())
            {
                crypto.GetNonZeroBytes(data);
            }
            StringBuilder result = new StringBuilder(); ;
            foreach(byte b in data)
            {
                result.Append(chars[b % (chars.Length)]);
            }

            return result.ToString();
        } 
    }
}