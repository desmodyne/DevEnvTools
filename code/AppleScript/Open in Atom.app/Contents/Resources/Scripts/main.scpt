FasdUAS 1.101.10   ��   ��    k             l     ��  ��     !/usr/bin/env osascript     � 	 	 . ! / u s r / b i n / e n v   o s a s c r i p t   
  
 l     ��������  ��  ��        l     ��  ��      Open in Atom.applescript     �   2   O p e n   i n   A t o m . a p p l e s c r i p t      l     ��������  ��  ��        l     ��  ��    0 * open a file or folder in Atom text editor     �   T   o p e n   a   f i l e   o r   f o l d e r   i n   A t o m   t e x t   e d i t o r      l     ��������  ��  ��        l     ��  ��    #  author  : stefan schablowski     �   :   a u t h o r     :   s t e f a n   s c h a b l o w s k i       l     �� ! "��   ! ' ! contact : sschablowski@gmail.com    " � # # B   c o n t a c t   :   s s c h a b l o w s k i @ g m a i l . c o m    $ % $ l     �� & '��   &   created : 2017-05-01    ' � ( ( *   c r e a t e d   :   2 0 1 7 - 0 5 - 0 1 %  ) * ) l     ��������  ��  ��   *  + , + l     ��������  ��  ��   ,  - . - l     �� / 0��   / 2 , NOTE: see also Open in Terminal.applescript    0 � 1 1 X   N O T E :   s e e   a l s o   O p e n   i n   T e r m i n a l . a p p l e s c r i p t .  2 3 2 l     ��������  ��  ��   3  4 5 4 l     ��������  ��  ��   5  6 7 6 l     �� 8 9��   8 T N -----------------------------------------------------------------------------    9 � : : �   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 7  ; < ; l     �� = >��   = "  open file or folder in Atom    > � ? ? 8   o p e n   f i l e   o r   f o l d e r   i n   A t o m <  @ A @ l     ��������  ��  ��   A  B C B l     �� D E��   D F @ taken from https://gist.github.com/shauvik/f6b22731c9df74b092d3    E � F F �   t a k e n   f r o m   h t t p s : / / g i s t . g i t h u b . c o m / s h a u v i k / f 6 b 2 2 7 3 1 c 9 d f 7 4 b 0 9 2 d 3 C  G H G l     ��������  ��  ��   H  I J I l     �� K L��   K   TODO: this fails with    L � M M ,   T O D O :   t h i s   f a i l s   w i t h J  N O N l     �� P Q��   P = 7   Open in Atom.applescript:1348:1370: execution error:    Q � R R n       O p e n   i n   A t o m . a p p l e s c r i p t : 1 3 4 8 : 1 3 7 0 :   e x e c u t i o n   e r r o r : O  S T S l     �� U V��   U F @   Atom Helper got an error: Application isn�??t running. (-600)    V � W W �       A t o m   H e l p e r   g o t   a n   e r r o r :   A p p l i c a t i o n   i s n � � � t   r u n n i n g .   ( - 6 0 0 ) T  X Y X l     �� Z [��   Z   possible pointers:    [ � \ \ &   p o s s i b l e   p o i n t e r s : Y  ] ^ ] l     �� _ `��   _ , &   http://stackoverflow.com/q/24196536    ` � a a L       h t t p : / / s t a c k o v e r f l o w . c o m / q / 2 4 1 9 6 5 3 6 ^  b c b l     �� d e��   d , &   http://stackoverflow.com/q/19957268    e � f f L       h t t p : / / s t a c k o v e r f l o w . c o m / q / 1 9 9 5 7 2 6 8 c  g h g l     ��������  ��  ��   h  i j i l      �� k l��   k � �
 * Finder Open Atom Here - v1.0 - 6/12/2014
 * http://shauvik.com/
 *
 * Copyright (c) 2014 Shauvik Roy Choudhary
 * Dual licensed under the MIT and GPL licenses.
 * Based on Open iTerm Here script by Ben Alman
     l � m m� 
   *   F i n d e r   O p e n   A t o m   H e r e   -   v 1 . 0   -   6 / 1 2 / 2 0 1 4 
   *   h t t p : / / s h a u v i k . c o m / 
   * 
   *   C o p y r i g h t   ( c )   2 0 1 4   S h a u v i k   R o y   C h o u d h a r y 
   *   D u a l   l i c e n s e d   u n d e r   t h e   M I T   a n d   G P L   l i c e n s e s . 
   *   B a s e d   o n   O p e n   i T e r m   H e r e   s c r i p t   b y   B e n   A l m a n 
   j  n o n l     ��������  ��  ��   o  p q p l    m r���� r O     m s t s k    l u u  v w v r     x y x e    	 z z c    	 { | { 1    ��
�� 
sele | m    ��
�� 
list y o      ���� 0 
myselected 
mySelected w  } ~ } Z    e  � � �  >    � � � l    ����� � I   �� ���
�� .corecnte****       **** � o    ���� 0 
myselected 
mySelected��  ��  ��   � m    ����   � k    D � �  � � � r     � � � n     � � � 4   �� �
�� 
cobj � m    ����  � o    ���� 0 
myselected 
mySelected � o      ���� 0 myitem myItem �  � � � Z    . � ����� � =   " � � � n      � � � m     ��
�� 
pcls � o    ���� 0 myitem myItem � m     !��
�� 
alia � r   % * � � � n   % ( � � � 1   & (��
�� 
orig � o   % &���� 0 myitem myItem � o      ���� 0 myitem myItem��  ��   �  ��� � Z   / D � ����� � E  / 8 � � � J   / 4 � �  � � � m   / 0��
�� 
file �  � � � m   0 1��
�� 
docf �  ��� � m   1 2��
�� 
inlf��   � n   4 7 � � � m   5 7��
�� 
pcls � o   4 5���� 0 myitem myItem � r   ; @ � � � n   ; > � � � m   < >��
�� 
ctnr � o   ; <���� 0 myitem myItem � o      ���� 0 myitem myItem��  ��  ��   �  � � � >  G N � � � l  G L ����� � l  G L ����� � I  G L�� ���
�� .corecnte****       **** � m   G H��
�� 
cwin��  ��  ��  ��  ��   � m   L M����   �  ��� � r   Q Y � � � n   Q W � � � m   U W��
�� 
cfol � l  Q U ����� � 4  Q U�� �
�� 
cwin � m   S T���� ��  ��   � o      ���� 0 myitem myItem��   � r   \ e � � � I  \ c�� ���
�� .earsffdralis        afdr � m   \ _��
�� afdmdesk��   � o      ���� 0 myitem myItem ~  ��� � n  f l � � � I   g l�� ����� 0 	open_atom 	open_Atom �  ��� � o   g h���� 0 myitem myItem��  ��   �  f   f g��   t m      � ��                                                                                  MACS  alis    t  Macintosh HD               ���H+     ?
Finder.app                                                      \o�u�        ����  	                CoreServices    ��x�      �u��       ?   &   %  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  ��  ��   q  � � � l     ��������  ��  ��   �  � � � i      � � � I      �� ����� 0 	open_atom 	open_Atom �  ��� � o      ���� 0 myitem myItem��  ��   � k      � �  � � � r      � � � n      � � � 1    ��
�� 
psxp � l     ����� � c      � � � o     ���� 0 myitem myItem � m    ��
�� 
TEXT��  ��   � o      ���� 0 mypath myPath �  � � � l   �� � ���   � > 8 TODO: this requires Atom Shell Commands to be available    � � � � p   T O D O :   t h i s   r e q u i r e s   A t o m   S h e l l   C o m m a n d s   t o   b e   a v a i l a b l e �  ��� � I   �� ���
�� .sysoexecTEXT���     TEXT � b     � � � m    	 � � � � � 
 a t o m   � o   	 
���� 0 mypath myPath��  ��   �  �� � l     �~�}�|�~  �}  �|  �       �{ � � ��{   � �z�y�z 0 	open_atom 	open_Atom
�y .aevtoappnull  �   � **** � �x ��w�v � ��u�x 0 	open_atom 	open_Atom�w �t ��t  �  �s�s 0 myitem myItem�v   � �r�q�r 0 myitem myItem�q 0 mypath myPath � �p�o ��n
�p 
TEXT
�o 
psxp
�n .sysoexecTEXT���     TEXT�u ��&�,E�O�%j  � �m ��l�k � ��j
�m .aevtoappnull  �   � **** � k     m � �  p�i�i  �l  �k   �   �  ��h�g�f�e�d�c�b�a�`�_�^�]�\�[�Z�Y�X�W
�h 
sele
�g 
list�f 0 
myselected 
mySelected
�e .corecnte****       ****
�d 
cobj�c 0 myitem myItem
�b 
pcls
�a 
alia
�` 
orig
�_ 
file
�^ 
docf
�] 
inlf
�\ 
ctnr
�[ 
cwin
�Z 
cfol
�Y afdmdesk
�X .earsffdralis        afdr�W 0 	open_atom 	open_Atom�j n� j*�,�&E�O�j j 3��k/E�O��,�  
��,E�Y hO���mv��, 
��,E�Y hY  �j j *�k/�,E�Y a j E�O)�k+ Uascr  ��ޭ