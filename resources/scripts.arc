ARC          $   N   MK                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      �gd.GDLeague.Nemesis = {}

-- Grim Dawn  �Bosses
local aetherial 1DBR@ � "records/creatures/enemies/ng  _D �_01.dbr",> h$ }� �chthonian� (D ?_02� > <� �kymonChose� )F � "	: � �orderDeathVigiS)J dJ  svK Z"E � _utlaw (A � #; 5� oundead� (A O_02a�< 8� [� Spawned = false�  �)" %�& � �  �monsterI� 0�xOKill�  � ! � % �  �  � �ChestDestroy� ' � ) � - � $ � $ � �function CharacterCpeArgs()( 	��verageLevel = Game.GetA aPlayer  6 4   # /in  'ax t
	if (h   �Difficulty() =�  �.Normal) then
		f !40 b 7 Oelsee OEpicc +55c 9c  � 1114 � !20+ snd
   � 	q<3| ~4$((� +
 �/50))+4)� 	W >uW 	� +
 W � � h + >  �  � �
	return2S, nil' �
 .PN�	�OnAddToWorld(objectId��if Server,�p��LI
��	��� >= 30 and
>�
 �% �	� I A truwx��  � 5tot 7 �able.getn(U .  (:  co"� = Entity�EQ:GetC! 	s �math.randomseed(Time.Now()Y ! !izh 8(1,� . S � s!& =�.� � [U  b &],4 3 �b W %:S� �   } t � 	  �W�m� <`� �% �+ I �0U .��� �juS�m� �
^�  �- �9W 6��� �j�
_�m� L�$ �1 U (0[ F��� �kSZ� �	9
Oy@	�� �( C �1R  z�� qC'
�NnpU� -p p( C p0R "p�� pC	s  1-- � )0��
  M  �" n  	 U�5 / �
�  > )bc �� , % + 3-- ;\ � if this ist� initial load.4theZ �does not meet. "fa��requirements to �" ) {  �J  ~=D)a (� � P:IsRe{ "edKy(  k ��I< 30T � 
� G�~) .�+b �0est� (��	   �rLocked(�    � 	  o
o
= o�W
wo) oviq? s�Wyu+ wv�{C �W}�/ �w'
~�	 $C�	r�X�i	& `=�	�	 �	gYb b 	: \�Wt\& \=)&�~� Z e @�	�H � );.    [ Z  �-- Unlockdppresent  l [ 5Z^ 
 lU	,H 	 	��	,J  �u,N   �'-E 	  �� ,E    n�.wVanguarC���Voidborn( _beast wendigo �%��)� V� ' �  �  	� �+� / � # � % �
� ��
?��)�&2WQ;� - b3 Y �%��&a	/&�1!v�	/++�{  Y	'�   W	T	�(��(
��<s-- onlyEnew B  �2d afterp`has tr�)s��	 void with Ulgrim, aka m��Rylok boss�U� Nz�& $- G�:HasToken("AREAF_DAILATRANSITION")�` � ���  � F�fq�]U� �$ E' A �� T_01_p�6�\Qt� � 	) E �� I�A� { �
���$  �  � 	 j�= �	 ,� E � � � @�, ��0 + x �	W)� 1 �-�	���	� J	���	i 	�+ �O[2��(�kr#q#$ o��
��f:
�  H>	c$ 	p�#1 .v" �� 9 ��Wsk% _vOa; c�Wue' gY�
"� ��	��
e 	+	 �m�!,�7!" ��!z�,F  n@-- B��G47`P03Dea�{UC,  �C7 �@ <cFinishv
; ��
	sC 9 7ds|� � BP03A� t0 l;[1]�!  	5 2  3   4]�.v0	--N/Zall 4� phase 3 copies have been k\.`, openI 1!N � � 	� /
�  � HBH2H�CH3H�DH4H��
 ��eldritch�}  L 8 �I! <�
` &
�Ea ��0
	B�:� �` < �G&4E� +� � � $ �+ H \5F[� c�DgI: ��IyDJ� `�B  �
 	 7
 �7� { �
�IE5 C� 
	  �s �� ��- � � � 1� �q7T k  )Lr7� <�
|h� ���r��t7�  �u7� 
 	 z�� ~
 f�� � ��#\ GEQ+ � F9�:� � b  `
 end�/*
	
	GRIM DAWN
	scripts/game/grimdawn.lua+ �For more information visit us at http://www.> 1com> �*/

gd = {} Sm r.Load(" z vGDLeagu	 0S02� /")6 �gdl_nemesis6 �
// Endless DungeonL 	� e+ d* 	F oQuests= 	q" 5 � � 	e ^  chQ Ogdx13 f b �events/wave �.lua")

�gd.GDLeague = {}

 �.TokenTabl �
	Dungeon_SoT1 P
		t$ � = "GDL_  � tepsOfTorment",) @item( �records/ qs/griml� �s03/quest X #_dq sQ R_of_tS B.dbrW �notification_ 4tag� � � N' 9 reward_@ uSoTNoth_ 8 � points = 10
	}� i O_BoC
0Bas� H  �  � "bJ  _chaosR?BoC
5/PV
Valbury0bport_vO R/PV
	2/AG

_Grove0�ancient_gP 	R/AG		3	OTotH
�TombHeretic0@tomb%Rthe_hV R?ToH	4+� Nemesis_Valdara�{.�  W% _(nq �aetherial� OKillJ!? At 	W6 �_Aleksander:'  :�_vanguard)XVs (_Benja$Bennjah"2ochthonQ�A,Cs ?ans_Grava=
" 9 _gt 4X_nsAoM`Fabiou�{ $ /us!1ooutlawYoronleyAMaid�pSideFac�	1_kymonXKp Zantari�<_orderX@Vigi����_Eldritcha
OKais�3eo + f� � 0E  6 _Undead
�MoosilaukeE1uq +�  B _Beast
�Kubacabra1bo X� Wendigo
OReap�	3wn Y�arrowholm	-?oNormal
# sR"�bossmod_rolderathiMh 6 �� �Shatterred_Realms_16� RSR_16H � "�sr_level16�!SRbEarnedw � VNSR16� �� /31� "31~ � */31� I/31� 1� 4�4�14�J4�	3� 6�6�16�J6�	5� 7�7�17�J7�	9��65_Challeng)
�)SR$ �0T_50_ct �� �"%50@ 	4'�Boss_ProtosZ! ( �"_ph 	PWorld} �% < � ?Nit& /  _A�c�  -af W� �� 223/_2
i� 
oLoxmer.! 
-lh 	W� K'�
	  -kf W� Rashalg�" 
-madqueej,2@MadQr 	. Su�� _Lokar�  -lf �  { :)� 2QBourb�� � ! -bh W� D�� �Mogdroge�
# -ml W� 5k	_Ravag(! - Og��  } 7)� 78�CallagadrZ$ -cn +W� 1-OCrat� . d X o 	 �f_Elite��_Theoding  -tg ��� � � 
�# 0 Korvaak  -kg \� �#���d_Galakro�" , �gm �  �|)� ��	 �BallogNat � $  0bq Onath"W� $"R|% &0�� � �I)� ( q  ^_eslic�# Uh w �� NarenKu�" I "  .�h � #0Karl�! d � �Rutnick� ! � �Blugrug� ! � �?Ast^
  � �_baddo/	" � �0Cel�/Ral_To�.� � ��`Gutwor�0� ! � ��HeraldStar�
% � �aDestrup'�� + � �OFlam�� % � �OKrie~ � �>*r! � ��5blocal �5P�4I��4Y5A^U oenalty\ *D c BDumm �  = �  OEntrZ  �6_�6�_participatiz2g  e&ved ' 
7d @s02_7  H c '�	�   &XS03_P� "�7�DifficultyRequiremen�(VGame. �.Legendary? ���^ L�%
Y $ � 
*  ) �& �( N�2
+  ~3S NSideV + �7
U 6U �
,  �� qUltimat� *es,  y", _  �$3 '�_to_enter_st0�2funI�9rDefault!PCondi��(player)
	return (0Get S() ==` � Band O A:GetD() >5  0 o)
end� OSR65� , � �_� =<� �� g� � _� AEpic� X� z -� �� (� � � 
� � x� 4� � �u� :&{ � FO� -U �& { � -� Y~ � oRedeem�	�� �.9_O== 4�F D-�|  B�-- checks if�� has achiv�1	s0gra�?�them that' `. Prev 	0douA�dipping for �.�C� 2ForLRAchie{ �
 s(d�G� V	�?SoT& ?BoC& /PV% /AG%  �= ' � �< . � , ;+ �8/an, ?AOM/ O�8X 18) O�6( s5+ U�4) �3( ?-- o3 , ��0!ed�1 16. �
, /31, 4X 6X 7X �,� 	JDeep�  . .) % 8d+" 2# 	P -# 	�(" 	�($ 	�&" 	�%# 	Mq%% 	$# 	#& 
 3"! 	 # 	Z! # �� ) �L& 	G  $ #�$is!�t_complete�9_false�RR� Q 	K R + � AP' 3if �B:Has? �)R3notw ,  y(xB, 1,� q)) thenH9o _:Give5 1
	� 7 � � � d� � ,  � g�  !i,;I� � in pairs(v^ % A) doM;=	ifS" G !["�'"]!#0  q'"]�  T' � �7�d 2Tak�! _ t = true���	�� �-- 	TODO FIX RECOVETING ALL TOKENS$ � N �� =130, 80, -1 do "glg H �EsSR_"..i$ � 1 � g N Rdrb_p#t�SREndlesK4SR"T �if(i > 99xk 	f  c..i.."�' e 3  "0� 8  �7 5�n 	o+ Sbreak �  	  �qTestAll+"�
Isqstest_al
E� }	�I�� ��& �& �% �% �� �
�S , 	�+ 
�, �/ �) �) �( 	�+ �) �( �.IR>00(81�� 0  /990 ?1001 31 � 
�A� 
, �, �, I, �, �MC{� (�m/& 7�N ;& ?( C& G' K) O' S*  W% 8' �' a�;G� �� � De�	��) ( �0(id��e ^2nilq � �S� b	}  
	^, 100kO F	 � 
*� 5 � 4 I
4 �    � �Q�1GDLl	 t(key, c�� --C�a customC � is provided it will be us 0nstI of�" dk� one: lvl�D on �5
	� ' =d )or��6�LgWH��q ��9 �_[key]���Q �? �	h�D 3	du o�P 
�X "]$Q		UI.AyXX; r	C c/`FullInZ or�NZ@y {~ ���  � D r<MiE"v M!D��?  �  �`s$..� ! �0
sm�mol%
-?if(|0}f �,���1 �� ��V] � � m � RJ  s(�/, �G )w�S�d/ '
% � starter itmes to new characters�0ive�-@tinge9
�,gd.quests.devilsCrossingNPCSpiritGuide.triggerSpawnNecklacei G� s �- �*	��,�� ' �"Received_S__#T") ori �d&  2 �~�!�  �� 
I� �
 BfKV�/booster c_dc_b0�KN %/roN 9/hsN 9/blN 9?odvO 9k�:_exile� 9/cwN :uN 9/pmN 9?wgdO ;bO ;$emisc/d�-�unlock_u,s�@craf7p/consum�e�s/gdl_xppo�.dmalmou%=7 26�%--B
w��	  ��@host �c�6V /kcU @�\Y #�`blueprDf /o�a "_e��f�keystone_04�u
��� ��( L) �*si \h<	�="/  "/  �< T.  - ?<,  + �;+  + �:+  + ]:*  ) �9+  - �celestiaP�3N91 dg�8b + h8 t
 8/ >6 )	s3 db79 Q7� r f�69 �63  6-  � 5V  "���	[@I
�
�	�
� Y /+h � �� 6 � >O� 5 � >�� 5 � >� 5 � >?� 4 � ?�� 6 � 96i>� �� 9I>� �� 9�� ��s.areaDPort}m ��es.doorG�h0iang$ed8 �9�0s
� �2�/ 5� �� �  CQ�� LegionPriority.\� '� B� Ahome!Re%(.O!Of& � '�� <�� �
`��Warden.w � !h 
�  ��
�!E� �� �RemoveTheHQd_arius� !l � %�-- Skeleton Key M&�6�s"%  �sT	) �r) ?BoC)  PV�	Q /PV' �pO /AG'  n&P   �	0-- = 1kenK3�, Z3Pthe StC Of Ut�	� 23��S �t V2es.{�Shortcut#Y:SoT�� 
�	�!Ch��OnOpenTier4{   	4"s -JholdoE!	�� "� ) (:�u6SoT� � ��t0 ofFo� � (� )�?BoC=�  � �� �� 	�?BoC� � �	}b*69/,/PV�`�+/PV�A�u  G�u��+
�EK J �3/AG�`� ��/AG� �v �CThe �v� � � Z^GS #OfM �3 k �` �   �� � � $� 2 ���C
~wvrw3= "( �w�2 a�v4 �v6 b�u2 �u. 6t- �t, f�s.  �s,ou�� m�r/ �.^ z�q0  r2 ed7tch2 /2 �o0 /. �n- /, �m m
�en1 nlm��
Dkill�	AAehtLy l 
( 
W1�! $.a2= ��� ), �"� Y �
�* '
` M� 
5	
5"� <� 	<	� �

� �Dial �>�8 �� �*  �,	P�X �+�F�� E�
� �dz�9 � � $.c[  ����� 2�@ 9�
� �p Ashesh�M�EB	���Voidborn ��y�*O�7�
�  
	T�'s Ganag��Z8� �.%  ��9
�3�:�
� ��|�'s Chosen���.�}Z  ����6�=�
� �=G �V5�'s VIgil�F �od ` ~E����� C�M J�
� 	,�Eh�7 AI �.� ��� �� 0�> 7 �
� ���6 q�.P ��� �� )�= 0�
� ��� a, must@� all 4 sm  р�  1coubX0v	g � ?  2+ 1'0 �P o9IH�	R/GP03A3 �y# 0 B0 C0 D0 ��r+H�n�	� ] � d ��6n �p� �
�;�< �� �� � �	��� �C� P.� �- � ~�0\ � c �� �/�6	�� uzC �P
�s�DWred_r��"5   6  ��+; ҁ;  /31; �;  /46; \�;  6v �;  7v 5r~E 	�~�c6s1?$0tU`beaten�� time and a+$ "�  =�respective sh��P Earnxa_* �a higher$ U alsoP �he lower tier�Uf	�F �3gd.�/� �.core.dispenseTreasure�lT>>1:O�69IsE[ cBonusC�O(ELAL�9  "] 
B @sGenɅ�' B6 F> 80�6��R C  :D;  �B/65] 
ahFz:� O= 76Z �GQ /61Q �GQ 4� �GQ 3� 3�T�O>= 1� 2H�    >V ���"SR0_O 80+(`FON n6�.OM2O�N�6O�A�  ,O7 �� P � NP7  w
�T�5[: ]�j  ��	8=�  @ x !� ��fp5f! =k}� C	 ,� F�1� �T?dbr=Q2�Q��; +< �PoT� R0sr_8"R1"R��0_dbH  "" 3if(5 i�, � #..- hi2 �Q7 i ��#A� T?�e ��@5   D~ L 3 = 
 P: �A\ 	K ') ��AP@� g�R  �  N�E�E'SR0 �RA G  .�0�* \�@ Ult)E�)	D�7 H�
�	) he � Gi�#_*is�*0R50�@� ?n� 	� 8 �� 
�  ��/76� 	c
� ��#*76� e/76[#� R� H
/61H{	H#6gR�H/61H#� H� H
4�r
H#4�'4�$� H� H
3�iH#3�'3�$� H� H
1�`H#1�'1�$� H� E�m
>�
9N�
}�m5 NL�Y� h,
$b��p��"$ _�U�+ a�) ގ* �U) 2* 2+ ��+ �U+ k�� C� �U) rf�+ �U"� � �O �I �Jc when  �Q �/ed�2  � �u	6�X�
�7
�'�
�R�	
�  ��	� � � 	�/ � & {	� 
�j AlVhxg�fL� e. d�c$/#2��  f2� �n� 2hX? #2�� � �� mALoxe���� nm?mL� �/ � k� k@Kra'j6i��3E<�Ugdenbog.krak�<#��L� .� �� � ms�� 4  3 � 
u>W�"�GodShrines.secret� ; h
�)�L� @0 �� �
�	s؇�Iy^ q	6�ߊ M	5 B1�6  7 �^9  ; �^9  7 �^:  =  �^8   9
Kj1  ���F�S_ecial�B!�g !@
@ �. � �.� �SJohn �z2 {�DNPCCloney,f z'A {/ |8 	� }�z4 |  =�rLegacy.avatar% �Ph 	� 8C �1 �: 	� �Cany �2  _2()	�|	P9�Village.�4 �#u 	� �A �/ �8 	� �$Ca�� 	���6p�B 	� YD \2 � 	�� b � �.M�ntainmen�q�*�B k�Gr6f �( � � � �} � t � 
E
4Velite#&_�g 6	 �M�  u	K  hK   �	~  Marcel): %�FFleshshaperpPhase03/ ��y
��H'V52@}7 B � �M$2  �_ �! ��Finished1 �M� � 2�f �/ �(B �   0-- RF0�_�$p_anquisa�"# "_A [+  dr�i) D ' vsoulren* S - wR� ea�aY W 1 d�eG� D �h7 `corrup�[ 
� C 1 �nightbrin�N 5 m+f 3  1 �morgonethvisa,� M V ; 	�\p 
�=9 Pheart�k,� H �SandKing7 routcasto O S�t7 PprimeG3 P Rf v�PerhelV�yV OHelmh 9 Amantv�; M = Farmo�w A ; g@(u G�Z  F�Ptouch� #C � inFDir i�j�C!. 0A: 7�P'� o.� �� '� h � d� �� n � �Shar'Zul's � �� OEartd�t s � > v5 f}vk@ O| �� �Gargabol �QF � p � 	-� SNigthl� v � �� �� r � �#s 	ED 3� �� �';�� <�� � � �! � �  <  ; Q � 	n� O3's hC �� 	��  P� �� 	�  �nf�gearaccessories/� ps/d228_ �d�pq	  � � l	, B  A � "�head/d210_
 � �	 '
� 	
� *C � "�shoulder�408_ � 	�
� �
� *B � "Rtorso�  � 	t� ?Gem� *"Ge 3+zn�o �412_ � 	6gem�  �-- Season 2 - �  Fh`s, Doo`	sMonster�ok��110, nil�&<)�pC (*6 Palbi{ cow�` = Ent `0Get�Q:GetC x �sq  =�1�q0.Cr�
	] v} � � )ЇI %:Sc � >� r" �Qu1Us2 35�(*1if(ę�wRW3` l� H3� t4g OEpice 
2e 0gxj 
3j  �   ��X� 2!ѩp�~__^4_idf i�_9e���� ϧ_� | �Q�; �X �+X #2X 	3� '3X 4c ��7 �v {6� �>H
Y<tc�>H�y �<5 30 m7a� f_oc��ures/enemI	BGrimY /��G	� ���}� ��, � W �7if(W 7+ ~�  �f! =t�>  \ 	,  �qLocked(h  � �  �Y QAddTo�u 	�  = �Z 	&E �M* (�ox �W�+,  2  �	U�rbX�L�@�;	B� B(q�/;� 1#/ �/ ��0if(-� �< ���� QdBw   R@ga� ��A�� �] ir��k D p z	8 �u  �	8 R �R �K��A m�Z�=��+D��� �!E r� ���  =q��;  V �S��V � 	� �B a;�	8�o�vr ' $s(^ V(,   �2��} �?�O� �, �, � �
��� �_A�   O�շ  �B�'Na+ �c is�)ks B x �: �{ 
 �: V �
V �[2��C }��J_����  �!G {r��
J Y6if(U +�=  Z ��%X � 	� �D �"� �[�r  6����� ��
. @
. B�S� � I{e	� f �"DV  :D(}"oy/�  � 
��|�
`:1,  2 p3)
end   �  �T  �  !  1    A3  ��  game/gdleague/gdl_nemesis.lua game/grimdawn.lua game/gdleague/gdleagues02.lua       �  �T  4C$�Я:��k�                 �  !  1  Y��0�S�j�                 A3  ��  ?��o ����k�         0   