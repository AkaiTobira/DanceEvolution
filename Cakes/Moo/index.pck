GDPC                                                                                <   res://.import/back.png-5b13bdb394c27d46b8f903bec2c97478.stexP.      �      ���v��>'.㇠��R<   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex H      �      �p��<f��r�g��.�@   res://.import/objects.png-23658ef1cba1fbb62ce5f4b079458dd3.stex �7      ?      e�N���ϱ5���   res://Scenes/Game.tscn  0      �      4�zi�K֍\�8}5�2   res://Scenes/Object1.tscn          �      �F��y�#�D�p�җ   res://Scenes/Object2.tscn   �      �      u���Mg*�R%�Ww��   res://Scenes/Object3.tscn   �      �      �����S������)   res://Scenes/Object4.tscn   �      �      X��o�f"?����X�   res://Scripts/Game.gd.remap @X      '       M�����*+��e��:�   res://Scripts/Game.gdc  �      )      t�N�J�g�r�Xk��    res://Scripts/Object.gd.remap   pX      )       ������$f�;��   res://Scripts/Object.gdc�$      �      y���J�3�����X    res://Scripts/Spawners.gd.remap �X      +       9�̧C��"�YD��K   res://Scripts/Spawners.gdc  �(      M      @��O�h�7(��    res://Scripts/Spwaner.gd.remap  �X      *       7��xj^��r�'y�-A]   res://Scripts/Spwaner.gdc   �,      d      �4etG���qp����́    res://Textures/back.png.import   5      �      7d�����w85�$   res://Textures/objects.png.import   �D      �      Pd�M�9�k�\Ă�   res://default_env.tres  pG      �       um�`�N��<*ỳ�8   res://icon.png   Y      i      ����󈘥Ey��
�   res://icon.png.import   �U      �      �����%��(#AB�   res://project.binarypf            y���ġ6�f�p���    [gd_scene load_steps=6 format=2]

[ext_resource path="res://Scripts/Game.gd" type="Script" id=1]
[ext_resource path="res://Textures/back.png" type="Texture" id=2]
[ext_resource path="res://Textures/objects.png" type="Texture" id=3]
[ext_resource path="res://Scripts/Spawners.gd" type="Script" id=4]
[ext_resource path="res://Scripts/Spwaner.gd" type="Script" id=5]

[node name="Game" type="Node2D"]
script = ExtResource( 1 )

[node name="Node2D" type="Node2D" parent="."]
position = Vector2( 600, 0 )
rotation = 1.5708
__meta__ = {
"_edit_lock_": true
}

[node name="Sprite" type="Sprite" parent="Node2D"]
position = Vector2( 509.912, 299.179 )
scale = Vector2( 1.59227, 1.50766 )
texture = ExtResource( 2 )

[node name="Sprite2" type="Sprite" parent="Node2D"]
position = Vector2( 504.131, 529.13 )
scale = Vector2( 1.63342, 1 )
texture = ExtResource( 3 )
vframes = 2
frame = 1

[node name="Sprite3" type="Sprite" parent="Node2D"]
position = Vector2( 533.74, 439.449 )
scale = Vector2( 1.76521, 1 )
texture = ExtResource( 3 )
vframes = 2
frame = 1

[node name="Sprite4" type="Sprite" parent="Node2D"]
position = Vector2( 499.869, 349.874 )
scale = Vector2( 1.66956, 1 )
texture = ExtResource( 3 )
vframes = 2
frame = 1

[node name="Sprite5" type="Sprite" parent="Node2D"]
position = Vector2( 529.457, 269.169 )
scale = Vector2( 1.65681, 1 )
texture = ExtResource( 3 )
vframes = 2
frame = 1

[node name="Interface" type="Node2D" parent="."]
position = Vector2( 600, 0 )
rotation = 1.5708
z_index = 1
__meta__ = {
"_edit_lock_": true
}

[node name="Sprite" type="Sprite" parent="Interface"]
position = Vector2( 510.69, 150.907 )
texture = ExtResource( 3 )
vframes = 2
hframes = 5

[node name="Label" type="Label" parent="Interface"]
margin_left = 8.86426
margin_top = 5.54016
margin_right = 82.8643
margin_bottom = 19.5402
rect_scale = Vector2( 5, 5 )
custom_colors/font_color = Color( 0, 0, 0, 1 )
text = "Score"

[node name="Label2" type="Label" parent="Interface"]
margin_left = 559.6
margin_top = 0.252327
margin_right = 633.6
margin_bottom = 14.2523
rect_scale = Vector2( 5, 5 )
custom_colors/font_color = Color( 0, 0, 0, 1 )
text = "Score"

[node name="Label3" type="Label" parent="Interface"]
margin_left = 8.64874
margin_top = 62.8295
margin_right = 82.6487
margin_bottom = 76.8295
rect_scale = Vector2( 5, 5 )
custom_colors/font_color = Color( 0, 0, 0, 1 )
text = "Score"
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Label4" type="Label" parent="Interface"]
margin_left = 416.761
margin_top = 53.3069
margin_right = 490.761
margin_bottom = 67.3069
rect_scale = Vector2( 5, 5 )
custom_colors/font_color = Color( 0, 0, 0, 1 )
text = "Press"

[node name="Spawners" type="Node2D" parent="."]
script = ExtResource( 4 )
__meta__ = {
"_edit_lock_": true
}

[node name="Marker1" type="Node2D" parent="Spawners"]
position = Vector2( 328.274, -32.9951 )
script = ExtResource( 5 )
direction = 1

[node name="Marker2" type="Node2D" parent="Spawners"]
position = Vector2( 55.7646, 1053.15 )
script = ExtResource( 5 )
direction = -1

[node name="Marker3" type="Node2D" parent="Spawners"]
position = Vector2( 187.496, -42.8062 )
script = ExtResource( 5 )
direction = 1

[node name="Marker4" type="Node2D" parent="Spawners"]
position = Vector2( 242.28, 1067.06 )
script = ExtResource( 5 )
direction = -1
      [gd_scene load_steps=3 format=2]

[ext_resource path="res://Scripts/Object.gd" type="Script" id=1]
[ext_resource path="res://Textures/objects.png" type="Texture" id=2]

[node name="Area2D" type="Area2D"]
script = ExtResource( 1 )

[node name="CollisionPolygon2D" type="CollisionPolygon2D" parent="."]
polygon = PoolVector2Array( -40.4549, -23.9743, -13.5919, -49.6693, 19.6948, -48.2094, 46.8498, -23.6823, 51.2296, 10.1884, 46.5578, 30.6277, 27.5785, 45.8111, -15.0519, 49.315, -40.163, 30.9197, -47.7547, 6.97655, -44.8348, -12.8787, -39.871, -24.2663 )

[node name="Sprite" type="Sprite" parent="."]
position = Vector2( 5.14426, 40.2966 )
z_index = 3
texture = ExtResource( 2 )
vframes = 2
hframes = 5
               [gd_scene load_steps=3 format=2]

[ext_resource path="res://Scripts/Object.gd" type="Script" id=1]
[ext_resource path="res://Textures/objects.png" type="Texture" id=2]

[node name="Area2D" type="Area2D"]
script = ExtResource( 1 )
idk = 1

[node name="CollisionPolygon2D" type="CollisionPolygon2D" parent="."]
polygon = PoolVector2Array( -40.4549, -23.9743, -13.5919, -49.6693, 19.6948, -48.2094, 46.8498, -23.6823, 51.2296, 10.1884, 46.5578, 30.6277, 27.5785, 45.8111, -15.0519, 49.315, -40.163, 30.9197, -47.7547, 6.97655, -44.8348, -12.8787, -39.871, -24.2663 )

[node name="Sprite" type="Sprite" parent="."]
position = Vector2( 5.14426, 40.2966 )
z_index = 3
texture = ExtResource( 2 )
vframes = 2
hframes = 5
frame = 1
             [gd_scene load_steps=3 format=2]

[ext_resource path="res://Scripts/Object.gd" type="Script" id=1]
[ext_resource path="res://Textures/objects.png" type="Texture" id=2]

[node name="Area2D" type="Area2D"]
script = ExtResource( 1 )
idk = 2

[node name="CollisionPolygon2D" type="CollisionPolygon2D" parent="."]
polygon = PoolVector2Array( -40.4549, -23.9743, -13.5919, -49.6693, 19.6948, -48.2094, 46.8498, -23.6823, 51.2296, 10.1884, 46.5578, 30.6277, 27.5785, 45.8111, -15.0519, 49.315, -40.163, 30.9197, -47.7547, 6.97655, -44.8348, -12.8787, -39.871, -24.2663 )

[node name="Sprite" type="Sprite" parent="."]
position = Vector2( 20.9117, 31.5369 )
z_index = 3
texture = ExtResource( 2 )
vframes = 2
hframes = 5
frame = 2
             [gd_scene load_steps=3 format=2]

[ext_resource path="res://Scripts/Object.gd" type="Script" id=1]
[ext_resource path="res://Textures/objects.png" type="Texture" id=2]

[node name="Area2D" type="Area2D"]
script = ExtResource( 1 )
idk = 3

[node name="CollisionPolygon2D" type="CollisionPolygon2D" parent="."]
polygon = PoolVector2Array( -40.4549, -23.9743, -13.5919, -49.6693, 19.6948, -48.2094, 46.8498, -23.6823, 51.2296, 10.1884, 46.5578, 30.6277, 27.5785, 45.8111, -15.0519, 49.315, -40.163, 30.9197, -47.7547, 6.97655, -44.8348, -12.8787, -39.871, -24.2663 )

[node name="Sprite" type="Sprite" parent="."]
position = Vector2( 20.9117, 31.5369 )
z_index = 3
texture = ExtResource( 2 )
vframes = 2
hframes = 5
frame = 3
             GDSC         ,   +     ���ӄ�   ����Ŷ��   �����϶�   ������Ҷ   ��������Ӷ��   �����Ӷ�   ����Ӷ��   �����Ӷ�   �������¶���   ����Ӷ��   �������Ŷ���   ����׶��   ����څ��   ���¶���   ����ڶ��   ����ڄ��   ���Ӷ���   �������Ŷ���   �������Ķ���   ����Ҷ��   �������Ӷ���   �������������������Ӷ���                 �@             Lives:        Score:     
   Change in:           
      <      F      Z      �      ^     �     #      �            P      d      �                            	                         "   	   #   
   (      )      .      3      4      9      :      A      O      ]      m      n      t      x      {      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '     (     )     *     +   )  ,   3YY;�  YY0�  PQV�  �  �&  PQ�  �  W�  �  T�  �  �  -YY;�  �  YY;�  �  Y;�	  �  YY;�  �  YY0�
  P�  QV�  W�  �  T�  �  �>  P�  Q�  W�  �  T�  �  �>  P�	  Q�  W�  �  T�  �  �>  P�  �  Q�  �  &�  	�  V�  �  �  �  (V�  ;�  �&  PQ�  �  *P�  �  QV�  �&  PQ�  �  �  �  �  �  �  �  �  �3  PR�  P�'  PQ�  QQ�  W�  T�  �3  PW�  T�  �  R�	  Q�  W�  �  T�  �  Y�  &�	  �
  V�  W�  T�  L�  R�  R�  R�  M�  W�  T�	  �  �  '�	  �  V�  W�  T�  L�  R�  R�  R�  M�  W�  T�	  �  '�	  �  V�  W�  T�  L�  R�  R�  R�  M�  W�  T�	  �  �  �  &�  �  V�  PQT�  PQY`       GDSC         !   �      ���ׄ�   ��ݶ   ����Ӷ��   ��������ض��   ����Ҷ��   �����϶�   �������Ŷ���   ����׶��   �������ض���   ϶��   ���������¶�   ������Ҷ   ����Ŷ��   ���������Ӷ�   �����¶�   ����¶��   ��������������������ض��   �����޶�                L     <      2                      	      
                           	       
   "      #      *      +      3      D      H      J      K      T      e      i      k      u      v      }      �      �      �      �      �      �       �   !   3YY8;�  YY;�  �  Y;�  Y;�  YY0�  PQV�  -YY0�  P�  QV�  �  &�  T�	  �  V�  &�
  PQT�  �  V�
  PQT�  �  �  �  PQ�  .�  �  &�  T�	  	�  V�  &�
  PQT�  �  V�
  PQT�  �  �  �  PQ�  .�  �  T�	  �  �  �  YY0�  P�  QV�  &�  4�  V�  &P�  T�  �  QT�  PQ	�  V�  &�
  PQT�  �  V�  �
  PQT�  �  �  (V�  �
  PQT�  �  �  �  PQY`         GDSC      
      �      ���ӄ�   ����Ŷ��   ����Ҷ��   �����Ŷ�   ������Ŷ   ����Ӷ��   �������Ķ���   �����϶�   �������Ŷ���   ����׶��   ߶��   �����Ķ�   �����������ض���   ���Ӷ���   �������Ӷ���   ����ض��      res://Scenes/Object1.tscn         res://Scenes/Object2.tscn         res://Scenes/Object3.tscn         res://Scenes/Object4.tscn      Z                   d           �������?                                                  -   	   :   
   G      L      M      R      S      Y      [      \      c      l      s      �      �      �      �      �      �      �      �      �      3YY;�  L?PQR�  ?P�  QR�  ?P�  QR�  ?P�  QMYY;�  L�  R�  R�  R�  MY;�  L�  R�  R�  R�  MY;�  L�  R�  R�  R�  MY;�  �  YY;�  �  YY0�  PQV�  -YY0�  P�	  QV�  )�
  �K  P�  QV�  �  L�
  M�	  �  &�  L�
  M�  L�
  M
�  V�  &�&  PQ�  �  V,�  �  L�
  M�	  �  ;�  �  PQL�
  M�  ;�  �  L�&  PQ�  MT�  PQ�  �  T�  �  L�&  PQ�  M�  �  T�  �  �  �  T�  P�  Q�  Y`   GDSC            6      ���ӄ�   ��������ض��   �����϶�   ����ض��   ���Ӷ���   �������ض���   ���������¶�   ��������Ҷ��                          	      
                           	       
   &      3      4      3YY8;�  YY0�  PQV�  -YY0�  P�  QV�  �  T�  �  �  �  T�  �  �  �  PQT�  PQT�  P�  QYY`            GDST�  �          �  PNG �PNG

   IHDR  �  �   ��Fr  OIDATx��ڱ�0A�s�.�bh̙�ȴ��I/��&�]���2���נ ���Bz&#�K�]�Y	�`n����� ��� �?` 0   �� @@�  � ` 0   �� @@�  � ` 0   �� @@�  � ` 0   �� @@�  � ` 0   �� @@�  � ` 0   �� @@�  � ` 0   �� @@�  � ` 0   �� @@�  � ` 0   �� @@�  � ` 0   �� @@�  � ` 0   �� @@�  � ` 0   �� @@�  � ` 0   �� @@�  � ` 0   �� @@�  � ` 0   �� @@�  � ` 0   �� @@�  � ` 0   �� @@�  � ` 0   �� @@�  � ` 0   �� @@�  � ` 0   �� @@�  � ` 0   �� @@�  � ` 0   �� @@�  � ` 0   �� @@�  � ` 0   �� @@�  � ` 0   �� @@�  � ` 0   �� @@�  � ` 0   �� @@�  � ` 0   �� @@�  � ` 0   �� @@�  � ` 0   �� @@�  � ` 0   �� @@�  � ` 0   �� @@�  � ` 0   �� @@�  � ` 0   �� @@�  � ` 0   �� @@�  � ` 0   �� @@�  � ` 0   �� @@�  � ` 0   �� @@�  � ` 0   �� @@�  � ` 0   �� @@�  � ` 0   �� @@�  � ` 0   �� @@�  � ` 0   �� @@�  � ` 0   �� @@�  � ` 0   �� @@�  � ` 0   �� @@�  � ` 0   �� @@�  � ` 0   �� @@�  � ` 0   �� @@�  � ` | �Ny��/    IEND�B`�        [remap]

importer="texture"
type="StreamTexture"
path="res://.import/back.png-5b13bdb394c27d46b8f903bec2c97478.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Textures/back.png"
dest_files=[ "res://.import/back.png-5b13bdb394c27d46b8f903bec2c97478.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
       GDST�  �          #  PNG �PNG

   IHDR  �  �   >��%  �IDATx���Kn����b @�f�A��m�,kz�Y�l�k�<3�� i[���E�^��}�� ѣ�M�>:%                      �Xz/����s�ｼ��� z8] ֌�\� 8�S��w�<������yZ^� �6 G��[���r0%�܆�B�����D�K �@x ���^�]�I�%7�.D  ���;ïE�ݲy�	�1��5�xN  ����g�ݒ��D`_oL�.��ϥ d6��M���݋�?��% '��	���	��D s��! ��y n��3������l+#�.�������@�?������! ����?,3��t��K)s�g��MT[/�Q�?േ?d��57/,��	�m��nf��������Lb�>0���4p 'x�� pU� �3��ٴ�M|x�1�@S�P�}Cv�3ܢ�`_���`F�D����c��x
@@�03�"�}E�� ��m`��ۡ��;� S+�w�W^T�us{�Vsht�Y@���P��g�V� ��@ ���� B/E�q�@ӿ"L)h�_���Lm�P�%�)�/�pv���}l�� ����Rm��݈r �Sc���o�7�U��i#P���4�+ ߘFف˸�M��_0��afU�������͘fb ��	 �*��?p ��C���ű�5���^D/g��][����a% �oS :�8���sZ�?�^�Mg����|��� �Rbh�W��S������(��9�  �d�ÿc	�|����  �r���6�?|������w���+u0�6{�g;�F ��p�!861	ԑ�@���u��-0�Y��	@!Y���y-�ن �60� `����ž�9��.7#�s#�%��0vOE_����ג��3���w�0q�s�|���Ż� ���	�IN���iyə�d����7�~��]_G{��@m&��(C�l'��޽�w�� U���� �@��ٜ�@S��*W����/�6�?���L i"�
�H/���R��oxE ҌC�_�? ��4%� �	@��n��0 ]d��,h�����t � ��t7����!	@�0�y���`X�aL�Y{ @O���G�?> �ao �>��U��>��� �d�ٜ��k� #�P�)�X  @0Y�������y��>�^ L��0�	��^�"��~UM F"  �9�K�j;ߘ�9� �d����� ��!`��y� �D �:<ف� �) v��σ�� ��R��M��]�Z�m@@� �,W����q�����czZ^
����/@P�'�o~�bR���9���Fޚ�ه��aT>�/7�jM`�py��֏�W�W��Y��_Y{&{Bp��v6�������{�N��} �";��+��EG��� �� 4�j��ެdH�Z���:С�}�FF�������W�fN��� L��!�;S��1����e��%{Jw�6,O�K��YL�Z�+P��s E`����y�ѷe�v  Cq�,;¶�|����Ja &T�*`S�C�O�v����p��wި4���F�>�v�~;��s8�������m]�q��i�u:L�0Z��6���t�k��-c 8����1��?o>~ӿ���pʚ��:ܛ��4 ���Vp����c_t=ܛ�s]$�YU	���c&����)��i=�+��(�: 'P- S����~�qM pK� LiS��Y�I��e�w�����&W_"g��|�S�WN
�f�����[�0����LM�H)}��� �4��6�ϙB0{�� ����SJ�	��5�F<4��� E�	�k�hIcL7�C� #�2|m�4�˗�����]�)� �u���!���8;��'�� �0xq ��6����
? �����1u0�} ��������I���
�NN��]���Q(� �ٜ. �i  ��� ���ȧ���K��w/�G�2L  ��  �@                                                                                                                                                                           ��z� ��~�   ��  �@ �`  @0   �  F  #  ��  �@ �`  @0   �  F  #  ��  �@ �`  @0   �  F              �h�� ���u���N R�_� 0�ŋ5 @,n �  F  #  ��  �@ �`  @0   �  F  #  ��  �@ �`  @0   �  F  #  ��  �@ �`z/  �˲,���N�/W                    �sX~���  h�{ #  ��  �<���ދ  �@ �`  @0   �  F  #  ��  �@ �`  @0   �  F  #  ��  �@ �`  @0   �  F  #  ��  �<���ދ  �@ �`  @0��<���_��  dX�u��  2 ������+ �!y� �U�  �@ �`  @0   �  F  #  ��  �@ �`  @0   �  F  #  ��  �@ �`  @0   �  �� ��,��� ��_� �����  ��@ �` �ZG# a~�       @HN B��Ç�Kh�m`  �Y"V/ @d&�  ��  ������  ��p�� �_&�  �@ �`  @0   �  F  #  ��  �@ �`  @0   �  F  #  ��  �@ �`  @0   �  ��  �e���&�  �\&�� �s1 �9�  ��￳?�                                                                                                                   �����+�UB    IEND�B`� [remap]

importer="texture"
type="StreamTexture"
path="res://.import/objects.png-23658ef1cba1fbb62ce5f4b079458dd3.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Textures/objects.png"
dest_files=[ "res://.import/objects.png-23658ef1cba1fbb62ce5f4b079458dd3.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
              [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             GDST@   @           |  PNG �PNG

   IHDR   @   @   �iq�  ?IDATx��{pTU�����;�N7	�����%"fyN�8��r\]fEgةf���X�g��F�Y@Wp\]|,�D@��	$$���	��I�n���ҝt����JW�s��}�=���|�D(���W@T0^����f��	��q!��!i��7�C���V�P4}! ���t�ŀx��dB.��x^��x�ɏN��贚�E�2�Z�R�EP(�6�<0dYF���}^Ѡ�,	�3=�_<��(P&�
tF3j�Q���Q�B�7�3�D�@�G�U��ĠU=� �M2!*��[�ACT(�&�@0hUO�u��U�O�J��^FT(Qit �V!>%���9 J���jv	�R�@&��g���t�5S��A��R��OO^vz�u�L�2�����lM��>tH
�R6��������dk��=b�K�љ�]�י�F*W�볃�\m=�13� �Є,�ˏy��Ic��&G��k�t�M��/Q]�أ]Q^6o��r�h����Lʳpw���,�,���)��O{�:א=]� :LF�[�*���'/���^�d�Pqw�>>��k��G�g���No���\��r����/���q�̾��	�G��O���t%L�:`Ƶww�+���}��ݾ ۿ��SeŔ����  �b⾻ǰ��<n_�G��/��8�Σ�l]z/3��g����sB��tm�tjvw�:��5���l~�O���v��]ǚ��֩=�H	u���54�:�{"������}k����d���^��`�6�ev�#Q$�ήǞ��[�Ặ�e�e��Hqo{�59i˲����O+��e������4�u�r��z�q~8c
 �G���7vr��tZ5�X�7����_qQc�[����uR��?/���+d��x�>r2����P6����`�k��,7�8�ɿ��O<Ė��}AM�E%�;�SI�BF���}��@P�yK�@��_:����R{��C_���9������
M��~����i����������s���������6�,�c�������q�����`����9���W�pXW]���:�n�aұt~9�[���~e�;��f���G���v0ԣ� ݈���y�,��:j%gox�T
�����kְ�����%<��A`���Jk?���� gm���x�*o4����o��.�����逊i�L����>���-���c�����5L����i�}�����4����usB������67��}����Z�ȶ�)+����)+H#ۢ�RK�AW�xww%��5�lfC�A���bP�lf��5����>���`0ċ/oA-�,�]ĝ�$�峋P2/���`���;����[Y��.&�Y�QlM���ƌb+��,�s�[��S ��}<;���]�:��y��1>'�AMm����7q���RY%9)���ȡI�]>�_l�C����-z�� ;>�-g�dt5іT�Aͺy�2w9���d�T��J�}u�}���X�Ks���<@��t��ebL������w�aw�N����c����F���3
�2먭�e���PQ�s�`��m<1u8�3�#����XMڈe�3�yb�p�m��܇+��x�%O?CmM-Yf��(�K�h�بU1%?I�X�r��� ��n^y�U�����1�玒�6..e��RJrRz�Oc������ʫ��]9���ZV�\�$IL�OŨ��{��M�p�L56��Wy��J�R{���FDA@
��^�y�������l6���{�=��ή�V�hM�V���JK��:��\�+��@�l/���ʧ����pQ��������׷Q^^�(�T������|.���9�?I�M���>���5�f欙X�VƎ-f͚ո���9����=�m���Y���c��Z�̚5��k~���gHHR�Ls/l9²���+ ����:��杧��"9�@��ad�ŝ��ѽ�Y���]O�W_�`Ֆ#Դ8�z��5-N^�r�Z����h���ʆY���=�`�M���Ty�l���.	�/z��fH���������֗�H�9�f������G� ̛<��q��|�]>ں}�N�3�;i�r"�(2RtY���4X���F�
�����8 �[�\锰�b`�0s�:���v���2�f��k�Zp��Ω&G���=��6em.mN�o.u�fԐc��i����C���u=~{�����a^�UH������¡,�t(jy�Q�ɋ����5�Gaw��/�Kv?�|K��(��SF�h�����V��xȩ2St쯹���{6b�M/�t��@0�{�Ԫ�"�v7�Q�A�(�ľR�<	�w�H1D�|8�]�]�Ո%����jҢ꯸hs�"~꯸P�B�� �%I}}��+f�����O�cg�3rd���P�������qIڻ]�h�c9��xh )z5��� �ƾ"1:3���j���'1;��#U�失g���0I}�u3.)@�Q�A�ĠQ`I�`�(1h��t*�:�>'��&v��!I?�/.)@�S�%q�\���l�TWq�������լ�G�5zy6w��[��5�r���L`�^���/x}�>��t4���cݦ�(�H�g��C�EA�g�)�Hfݦ��5�;q-���?ư�4�����K����XQ*�av�F��������񵏷�;>��l�\F��Þs�c�hL�5�G�c�������=q�P����E �.���'��8Us�{Ǎ���#������q�HDA`b��%����F�hog���|�������]K�n��UJ�}������Dk��g��8q���&G����A�RP�e�$'�i��I3j�w8������?�G�&<	&䪬R��lb1�J����B$�9�꤮�ES���[�������8�]��I�B!
�T
L:5�����d���K30"-	�(��D5�v��#U�����jԔ�QR�GIaó�I3�nJVk���&'��q����ux��AP<�"�Q�����H�`Jң�jP(D��]�����`0��+�p�inm�r�)��,^�_�rI�,��H>?M-44���x���"� �H�T��zIty����^B�.��%9?E����П�($@H!�D��#m�e���vB(��t �2.��8!���s2Tʡ �N;>w'����dq�"�2����O�9$�P	<(��z�Ff�<�z�N��/yD�t�/?�B.��A��>��i%�ǋ"�p n� ���]~!�W�J���a�q!n��V X*�c �TJT*%�6�<d[�    IEND�B`�        [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icon.png"
dest_files=[ "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
[remap]

path="res://Scripts/Game.gdc"
         [remap]

path="res://Scripts/Object.gdc"
       [remap]

path="res://Scripts/Spawners.gdc"
     [remap]

path="res://Scripts/Spwaner.gdc"
      �PNG

   IHDR   @   @   �iq�  0IDATx��}pTU����L����W�$�@HA�%"fa��Yw�)��A��Egةf���X�g˱��tQ���Eq�!�|K�@BHH:�t>�;�����1!ݝn�A�_UWw����{λ��sϽO�q汤��X,�q�z�<�q{cG.;��]�_�`9s��|o���:��1�E�V� ~=�	��ݮ����g[N�u�5$M��NI��-
�"(U*��@��"oqdYF�y�x�N�e�2���s����KҦ`L��Z)=,�Z}"
�A�n{�A@%$��R���F@�$m������[��H���"�VoD��v����Kw�d��v	�D�$>	�J��;�<�()P�� �F��
�< �R����&�կ��� ����������%�u̚VLNfڠus2�̚VL�~�>���mOMJ���J'R��������X����׬X�Ϲ虾��6Pq������j���S?�1@gL���±����(�2A�l��h��õm��Nb�l_�U���+����_����p�)9&&e)�0 �2{��������1���@LG�A��+���d�W|x�2-����Fk7�2x��y,_�_��}z��rzy��%n�-]l����L��;
�s���:��1�sL0�ڳ���X����m_]���BJ��im�  �d��I��Pq���N'�����lYz7�����}1�sL��v�UIX���<��Ó3���}���nvk)[����+bj�[���k�������cݮ��4t:= $h�4w:qz|A��٧�XSt�zn{�&��õmQ���+�^�j�*��S��e���o�V,	��q=Y�)hԪ��F5~����h�4 *�T�o��R���z�o)��W�]�Sm銺#�Qm�]�c�����v��JO��?D��B v|z�կ��܈�'�z6?[� ���p�X<-���o%�32����Ρz�>��5�BYX2���ʦ�b��>ǣ������SI,�6���|���iXYQ���U�҅e�9ma��:d`�iO����{��|��~����!+��Ϧ�u�n��7���t>�l捊Z�7�nвta�Z���Ae:��F���g�.~����_y^���K�5��.2�Zt*�{ܔ���G��6�Y����|%�M	���NPV.]��P���3�8g���COTy�� ����AP({�>�"/��g�0��<^��K���V����ϫ�zG�3K��k���t����)�������6���a�5��62Mq����oeJ�R�4�q�%|�� ������z���ä�>���0�T,��ǩ�����"lݰ���<��fT����IrX>� � ��K��q�}4���ʋo�dJ��م�X�sؘ]hfJ�����Ŧ�A�Gm߽�g����YG��X0u$�Y�u*jZl|p������*�Jd~qcR�����λ�.�
�r�4���zپ;��AD�eЪU��R�:��I���@�.��&3}l
o�坃7��ZX��O�� 2v����3��O���j�t	�W�0�n5����#è����%?}����`9۶n���7"!�uf��A�l܈�>��[�2��r��b�O�������gg�E��PyX�Q2-7���ʕ������p��+���~f��;����T	�*�(+q@���f��ϫ����ѓ���a��U�\.��&��}�=dd'�p�l�e@y��
r�����zDA@����9�:��8�Y,�����=�l�֮��F|kM�R��GJK��*�V_k+��P�,N.�9��K~~~�HYY��O��k���Q�����|rss�����1��ILN��~�YDV��-s�lfB֬Y�#.�=�>���G\k֬fB�f3��?��k~���f�IR�lS'�m>²9y���+ �v��y��M;NlF���A���w���w�b���Л�j�d��#T��b���e��[l<��(Z�D�NMC���k|Zi�������Ɗl��@�1��v��Щ�!曣�n��S������<@̠7�w�4X�D<A`�ԑ�ML����jw���c��8��ES��X��������ƤS�~�׾�%n�@��( Zm\�raҩ���x��_���n�n���2&d(�6�,8^o�TcG���3���emv7m6g.w��W�e
�h���|��Wy��~���̽�!c� �ݟO�)|�6#?�%�,O֫9y������w��{r�2e��7Dl �ׇB�2�@���ĬD4J)�&�$
�HԲ��
/�߹�m��<JF'!�>���S��PJ"V5!�A�(��F>SD�ۻ�$�B/>lΞ�.Ϭ�?p�l6h�D��+v�l�+v$Q�B0ūz����aԩh�|9�p����cƄ,��=Z�����������Dc��,P��� $ƩЩ�]��o+�F$p�|uM���8R��L�0�@e'���M�]^��jt*:��)^�N�@�V`�*�js�up��X�n���tt{�t:�����\�]>�n/W�\|q.x��0���D-���T��7G5jzi���[��4�r���Ij������p�=a�G�5���ͺ��S���/��#�B�EA�s�)HO`���U�/QM���cdz
�,�!�(���g�m+<R��?�-`�4^}�#>�<��mp��Op{�,[<��iz^�s�cü-�;���쾱d����xk瞨eH)��x@���h�ɪZNU_��cxx�hƤ�cwzi�p]��Q��cbɽcx��t�����M|�����x�=S�N���
Ͽ�Ee3HL�����gg,���NecG�S_ѠQJf(�Jd�4R�j��6�|�6��s<Q��N0&Ge
��Ʌ��,ᮢ$I�痹�j���Nc���'�N�n�=>|~�G��2�)�D�R U���&ՠ!#1���S�D��Ǘ'��ೃT��E�7��F��(?�����s��F��pC�Z�:�m�p�l-'�j9QU��:��a3@0�*%�#�)&�q�i�H��1�'��vv���q8]t�4����j��t-}IـxY�����C}c��-�"?Z�o�8�4Ⱦ���J]/�v�g���Cȷ2]�.�Ǣ ��Ս�{0
�>/^W7�_�����mV铲�
i���FR��$>��}^��dُ�۵�����%��*C�'�x�d9��v�ߏ � ���ۣ�Wg=N�n�~������/�}�_��M��[���uR�N���(E�	� ������z��~���.m9w����c����
�?���{�    IEND�B`�       ECFG      _global_script_classes             _global_script_class_icons             application/config/name      
   CakeMdness     application/run/main_scene          res://Scenes/Game.tscn     application/config/icon         res://icon.png     display/window/size/width      X     display/window/size/height            display/window/size/fullscreen         #   display/window/handheld/orientation         sensor     display/window/stretch/mode         2d     display/window/stretch/aspect         keep&   display/window/size/fullscreen.Android         $   rendering/quality/driver/driver_name         GLES2   %   rendering/vram_compression/import_etc         )   rendering/environment/default_environment          res://default_env.tres          