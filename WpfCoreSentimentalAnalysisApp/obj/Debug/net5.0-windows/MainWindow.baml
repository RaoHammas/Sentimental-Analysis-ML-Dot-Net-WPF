   M S B A M L   `   `   `  ����X  TWpfCoreSentimentalAnalysisApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullM+clr-namespace:WpfCoreSentimentalAnalysisAppWpfCoreSentimentalAnalysisApp  5   	   .    (WpfCoreSentimentalAnalysisApp.MainWindow   5   	   \ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   =local+clr-namespace:WpfCoreSentimentalAnalysisApp     5   	     � 
ResizeMode$  NoResize=�6C    � WindowStartupLocation$ CenterScreen=�5       � Title$ Sentimental Analysis��5   	   $	��510��6&   $	��920��63   
�������.��5	      � .+�5
   
   �� $��20q�6   
�������$��1q�65   ._�5      �  � ColumnDefinitions 5      �� 5      $��3* �6'   �� 5      $
��Auto �6'   �� 5      $��2* �6'   .+�5      ��  �� Orientation$ Vertical=�6   $��10q�64   .+�5      �� 
�������
�������$��1q�6H    �� CornerRadius$ 5��6\   ._�5      �� $
��Bold"�6$   $��28(�66    �� TextAlignment$ Center=�5   $   SENTIMENTAL ANALYSIS5      6'   �� 5      $��0 20 0 0q�6    Statement/Tweet6C   �� 5      -   5         ��Name$ BoxText��5      $	��135��6/   $��10q�6<   $��16(�6I    �� AcceptsReturn$
 True��6W   	 �� TextWrapping$
	 Wrap=�6l   6�   � 5      -   5        
 �Name$
 ProgressBarPrediction��5   "   $y�	Collapsed=�6A    � IsIndeterminate$
 True��6X   6q   �� 5      -   5         ��Name$ 
BtnPredict��5       �� 	IsDefault$
 True��61   $��0 20 0 0q�6B   $��35��6T   $��16(�6`   $��0q�5      
���q�<���5       �� 5!       �� 
TargetType" ��6$   .�5"   "   ��  �� Property �@J�Effect �� Value 5#   &   3  -System.Windows.Media.Effects.DropShadowEffect  5$   *      
BlurRadius$ 20Q�6;      Color$ 	LimeGreen��6K      ShadowDepth$ 7Q�5%   ;      Opacity$	 0.4Q�6K   6[   5'   #   �� 5(   "    � ��
 �����6O    �� Triggers 5)   "   P� 5*   &    P� Property �@J�IsMouseOver P� Value$
 True��6E   . �5+   *   ��  � ��
 �   �6W   �� 5,   *    �@J�Effect 5-   .     5.   2   $ 0Q�6C   $ 0Q�6R   6`   50   +   51   '   53      .��54   (   Predict Sentiment56      �� 57      $ Center=�6    $��0 20 0 0q�67   
�������" Design & Developed by Rao Hammas6�   �� 58      $ Center=�6    
�������" Powered by ML.NET & Dot Net Core6o   �� 59      $ Center=�6    
�������(&Hammas143@gmail.com | Insta@Rao_Hammas6q   5;      �� 5=      $��1��6   
�������$��1��6=   $��	0 10 0 10q�6G   6\   �� 5?      $��2��6   $��10q�6-   $ Vertical=�69   .+�5@      �� 
�������
�������$��1q�6H   $ 5��6\   ._�5A      �� $ Center=�6$   $��0 0 0 0q�6;   $��28(�6M   $
��Bold"�6[   PREDICTIONS6z   5B      �� 5C      $ 
Horizontal=�6!   $��0 20 0 0q�6:   .+�5D      �� $ Vertical=�6%   $��Center=�6<   .+�5E      �� -   5         ��Name$ TextResultHeading��5E   (   
���q�<�$
��Bold"�6_   $��22(�6q   
Positive5G      �� 5H      -   5        $ TextResultDescription��5H   (   
���q�<�The sentiment is Positive6~   5I      �� 5J      -   5        $ TextPositiveResultPercent��5J   $   $
��Bold"�6G   $��30 0 0 0q�5K   $   
���q�<�$��38(�5L   $   $��Center=�62    J� Effect 5M        5N   "   $ 1Q�63   $ MediumSeaGreen��6B   $ 2Q�5O   3   $	 0.4Q�6C   6S   0%5R      5S      �� 5T      $��10 10 10 10q�6    67   �� 5U      $ 
Horizontal=�6!   $��0 0 0 0q�6:   .+�5V      �� $ Vertical=�6%   $��Center=�6<   .+�5W      �� -   5        $ TextResultLessHeading��5W   (   
���\\��$
��Bold"�6^   $��22(�6p   
Negative5Y      �� 5Z      -   5        $ TextResultLessDescription��5Z   (   
���\\��The sentiment is Negative6}   5[      �� 5\      -	   5        $ TextNegativeResultPercent��5\   $   $
��Bold"�6G   $��25 0 0 0q�5]   $   
���\\��$��38(�5^   $   $��Center=�62    5_        5`   "   $ 1Q�63   $ 	IndianRed��6B   $ 2Q�5a   3   $	 0.4Q�6C   6S   0%5d      5e      �� 5g      -
   5        $ TextResultAllDetails��5g       $��0 10 0 0q�6>   $y�	Collapsed=�6P   $
��Wrap=�6g   6}   � 5i      $��0 20 0 0q�6    5j        5k      $ 10Q�6/   $ 3Q�5l   /   $	 0.4Q�6?   6O   .+�5n      �� -   5         ��Name$ PositiveImage��5n       $��	Happy.png��67   $	��200��6J   $	��200��6V   $y�	Collapsed=�6c   6|   �� 5o      -   5        $ NegativeImage��5o       $��	Angry.png��67   $	��200��6J   $	��200��6V   $y�	Collapsed=�6c   6|   5p      5q      5r      5s      5t      5u      