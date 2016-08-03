number = 1
print(text){
	Gui, Destroy ;
	Gui, Margin, 0, 0
	Gui, +AlwaysOnTop +ToolWindow +HwndhGui -SysMenu -Caption ;
	Gui, Color, ffffff;
	WinSet, TransColor, ffffff;
	Gui, Font, 000000 ws16 wbold, Verdana ;
	Gui, Add, Text, x0 y0, %text% ;
	Gui, Show, x0 y0 w16 h25 NoActivate ;
	return
}

+::
if (GetKeyState("+")){
	Gui, Destroy
	number += 1
	if (number > 12){
		number = 1
	} 
	if (number < 10) {
		print(number)
	} else if (number == 10){
		print("0")
	} else if (number == 11){
		print("-")
	} else if (number == 12) {
		print("=")
	}
	return
}

_::
if (GetKeyState("_")){
	Gui, Destroy
	number -= 1
	if (number < 1){
		number = 12
	}
	if (number < 10) {
		print(number)
	} else if (number == 10){
		print("0")
	} else if (number == 11){
		print("-")
	} else if (number == 12) {
		print("=")
	}
	return
}

!::
if (GetKeyState("!")){
	if (number < 10){ 
		send %number%
	} else if (number == 10) {
		send 0
	} else if (number == 11) {
		send -
	} else if (number == 12) {
		send {=}
	}
	return
}
