   M S B A M L   `   `   `  ����I  ECrypto Program, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:Crypto_ProgramCrypto_Program  5   	       Crypto_Program.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   .localclr-namespace:Crypto_Program     5   	     � Title$  Crypto Program��5   	   $	��350��6    $	��525��6-   ���	#FFA2A1A1.��5	      � .+�5
   
   �� -   5         ��Name$ buttonEncryptFile��5
   #   $��Encrypt��6   $
��Left=�6>   $��	10,96,0,0q�6Y   $	��Top=�6l   $	��103��6�   6�   �� 5   
   -   5        $ buttonDecryptFile��5   #   $��Decrypt��6   $
��Left=�6>   $��
128,96,0,0q�6Y   $	��Top=�6m   $	��103��6�   6�   �� 5   
   -   5        $ buttonCreateAsmKey��5   '   $��Create Keys��6   $
��Left=�6C   $��
266,96,0,0q�6^   $	��Top=�6r   $	��103��6�   6�   �� 5   
   -   5        $ buttonExportPublicKey��5   -   $��Export Public Key��6   $
��Left=�6M   $��266,139,0,0q�6h   $	��Top=�6}   $	��103��6�   6�   �� 5   
   -   5        $ buttonImportPublicKey��5   -   $��Import Public Key��6   $
��Left=�6L   $��383,139,0,0q�6g   $	��Top=�6|   $	��103��6�   6�   �� 5   
   -   5        $ ButtonGetPrivateKey��5      $��Get Private Key��6.   $
��Left=�6H   $��
383,97,0,0q�6c   $	��Top=�6w   $	��103��6�   6�   �� 5   
   -   5         ��Name$ label1��5      $�� ��6    $
��Left=�6+   $��
16,248,0,0q�6F   $	��Top=�6Z   $��32��6r   $	��362��6~   �� 5   
   -   5        $ LabelEncryptDecrypt��5      $��Encrypt/Decrypt file:��6-   $
��Left=�6M   $��	27,27,0,0q�6h   $	��Top=�6{   $
��Bold"�6�   $��16(�6�   �� 5   
   -	   5        $ LabelKeyManagement��5      $��Key Management:��6,   $
��Left=�6F   $��
282,27,0,0q�6a   $	��Top=�6u   $
��Bold"�6�   $��16(�6�   �� 5   
   -
   5        $ LabelUitleg��5      $Y��SStep 1: Create a key Pair
Step 2: Click Encrypt or Decrypt
Step 3: Choose a file.��6%   $
��Left=�6�   $��
30,195,0,0q�6�   $	��Top=�6�   $��68��6�   $	��282��6�   5      5      