# code

## 仿真操作

- 显示字符

```basic
$sim
$regfile = "m16def.dat"
$crystal = 1000000

config lcd = 16 * 2
'config lcdpin = pin, db4 = porta.4, db5 = porta.5, db6 = porta.6, db7 = porta.7, e = porta.1, rs = porta.0
config lcdpin = pin, rs = porta.2, e = porta.3, db4 = porta.4, db5 = porta.5, db6 = porta.6, db7 = porta.7
cls

lcd "hello world"
waitms 250

end
```

- 显示字符，先左移再右移

```basic
$sim
$regfile = "m16def.dat"
$crystal = 1000000

config lcd = 16 * 2
config lcdpin = pin, rs = porta.2, e = porta.3, db4 = porta.4, db5 = porta.5, db6 = porta.6, db7 = porta.7
cls

lcd "hello world"
waitms 250

dim n as byte
for n = 1 to 3
    shiftlcd right : waitms 250
next

for n = 1 to 5
    shiftlcd left : waitms 250
next

end
```

## 跑马灯实验

- 红、黄、绿依次点亮（D2-PC7, D9-PC0, 低电平有效）

```basic
$regfile = "m16def.dat"
$crystal = 1000000

config portc = output

do
    portc = &B01101110 : waitms 500
    portc = &B11011011 : waitms 500
    portc = &B10110101 : waitms 500
loop

end
```

- 从左到右亮，再从右到左亮

```basic
$regfile = "m16def.dat"
$crystal = 1000000

config portc = output
portc = &B11111110 : waitms 500

dim n as byte

do
    for n = 1 to 7
        rotate portc, left : waitms 500
    next
    for n = 1 to 7
        rotate portc, right : waitms 500
    next
loop

end
```

## 端口输入操作，实现控制 LED 灯等

- 按下 AC1、4、5、6、7，点亮对应的 LED 灯

```basic
$regfile = "m16def.dat"
$crystal = 1000000

config portc = output : portc = &B11111111
config portb = input
dim k as byte

do
        k.1 = pinb.1 : k.4 = pinb.4 : k.5 = pinb.5 : k.6 = pinb.6 : k.7 = pinb.7
        if k.1 = 0 then portc = &B11111101
        if k.4 = 0 then portc = &B11101111
        if k.5 = 0 then portc = &B11011111
        if k.6 = 0 then portc = &B10111111
        if k.7 = 0 then portc = &B01111111
        if k.1 <> 0 and k.4 <> 0 and k.5 <> 0 and k.6 <> 0 and k.7 <> 0 then portc = &B11111111
loop

end
```

- 按下 AC1、4、5、6、7、INT0、INT1，LCD 显示数字

```basic
$regfile = "m16def.dat"
$crystal = 1000000

ddrb = &B00001101
portb.1 = 1 : portb.4 = 1 : portb.5 = 1 : portb.6 = 1 : portb.7 = 1
ddrd = &B11110011
portd.2 = 0 : portd.3 = 0

config lcd = 16 * 2
config lcdpin = pin, rs = porta.2, e = porta.3, db4 = porta.4, db5 = porta.5, db6 = porta.6, db7 = porta.7

cls : locate 1, 1 : lcd "welcome to world" : locate 2, 1

dim i as byte : i = 1
do
    if pinb.1 = 0 then
        lcd "0" : waitms 200 : incr i
    end if

    if pinb.4 = 0 then
        lcd "1" : waitms 200 : incr i
    end if

    if pinb.5 = 0 then
        lcd "2" : waitms 200 : incr i
    end if

    if pinb.6 = 0 then
        lcd "3" : waitms 200 : incr i
    end if

    if pinb.7 = 0 then
        lcd "4" : waitms 200 : incr i
    end if

    if pind.2 = 0 then
        lcd "5" : waitms 200 : incr i
    end if

    if pind.3 = 0 then
        lcd "6" : waitms 200 : incr i
    end if

    if i > 16 then
        cls : locate 1, 1 : lcd "welcome to world" : locate 2, 1
        i = 1
    end if
loop

end
```

## 数码管扫描（左移右移）、单个数码管显示操作

- 六个数码管全亮，从 0 到 F 循环

```basic
$regfile = "m16def.dat"
$crystal = 1000000

config porta.3 = output
config porta.4 = output
config portc = output

dim num(16) as byte, i as byte
restore number
for i = 1 to 16
   read num(i)
next

do
    for i = 1 to 16
        porta.3 = 1 : portc = num(i) : porta.3 = 0
        porta.4 = 1 : portc = &B11000000 : porta.4 = 0
        waitms 500
    next
loop

end

number:
data &H3F, &H06, &H5B, &H4F, &H66, &H6D, &H7D, &H07, &H7F, &H6F
data &H77, &H7C, &H39, &H5E, &H79, &H71
```

- 在上面的基础上加了一个关于位置的循环

```basic
$regfile = "m16def.dat"
$crystal = 1000000

config porta.3 = output
config porta.4 = output
config portc = output

dim num(16) as byte, pos(6) as byte, i as byte, j as byte
restore number
for i = 1 to 16
    read num(i)
next
restore position
for j = 1 to 6
   read pos(j)
next

do
    for i = 1 to 16
        for j = 1 to 6
            porta.3 = 1 : portc = num(i) : porta.3 = 0
            porta.4 = 1 : portc = pos(j) : porta.4 = 0
            waitms 500
        next
    next
loop

end

number:
data &H3F, &H06, &H5B, &H4F, &H66, &H6D, &H7D, &H07, &H7F, &H6F
data &H77, &H7C, &H39, &H5E, &H79, &H71

position:
data &B11011111, &B11101111, &B11110111, &B11111011, &B11111101, &B11111110
```

- （单层）循环：从 0 到 F，从左到右

```basic
$regfile = "m16def.dat"
$crystal = 1000000

config porta.3 = output
config porta.4 = output
config portc = output

dim num(16) as byte, pos(6) as byte, i as integer
restore number
for i = 1 to 16
    read num(i)
next
restore position
for i = 1 to 6
    read pos(i)
next

do
    incr i : if i = 96 then i = 0
    porta.3 = 1 : portc = num(i mod 16) : porta.3 = 0
    porta.4 = 1 : portc = pos(i mod 6) : porta.4 = 0
    waitms 500
loop

end

number:
data &H3F, &H06, &H5B, &H4F, &H66, &H6D, &H7D, &H07, &H7F, &H6F
data &H77, &H7C, &H39, &H5E, &H79, &H71

position:
data &B11011111, &B11101111, &B11110111, &B11111011, &B11111101, &B11111110
```

- 学号向右移动

```basic
$regfile = "m16def.dat"
$crystal = 1000000

config porta.3 = output
config porta.4 = output
config portc = output

dim num(16) as byte, pos(6) as byte, i as byte, j as byte
restore number
for i = 1 to 16
    read num(i)
next
restore position
for j = 1 to 6
   read pos(j)
next

do
	for i = 1 to 10
		porta.3 = 1 : portc = num(2) : porta.3 = 0
		porta.4 = 1 : portc = pos(1) : porta.4 = 0 : waitms 10
		porta.3 = 1 : portc = num(0) : porta.3 = 0
		porta.4 = 1 : portc = pos(2) : porta.4 = 0 : waitms 10
		porta.3 = 1 : portc = num(1) : porta.3 = 0
		porta.4 = 1 : portc = pos(3) : porta.4 = 0 : waitms 10
		porta.3 = 1 : portc = num(0) : porta.3 = 0
		porta.4 = 1 : portc = pos(4) : porta.4 = 0 : waitms 10
		porta.3 = 1 : portc = num(0) : porta.3 = 0
		porta.4 = 1 : portc = pos(5) : porta.4 = 0 : waitms 10
		porta.3 = 1 : portc = num(2) : porta.3 = 0
		porta.4 = 1 : portc = pos(6) : porta.4 = 0 : waitms 10
	next
loop

end

number:
data &H3F, &H06, &H5B, &H4F, &H66, &H6D, &H7D, &H07, &H7F, &H6F
data &H77, &H7C, &H39, &H5E, &H79, &H71

position:
data &B11011111, &B11101111, &B11110111, &B11111011, &B11111101, &B11111110
```

## 步进电机操作（按键控制转速）

`$crystal = 8000000`

- 逆时针转一周，顺时针转一周（4096 -> 360度）

```basic
$regfile = "m16def.dat"
$crystal = 8000000

config portd = &B11110000

dim x as byte, y as integer, f(8) as byte

restore phases
for x = 1 to 8
    read f(x)
next
x = 1

do
    for y = 1 to 4096
        portd = f(x) : waitms 1
        incr x : if x = 9 then x = 1
    next
    for y = 1 to 4096
        portd = f(x) : waitms 1
        decr x : if x = 0 then x = 8
    next
loop

end

phases:
data &H80, &HA0, &H20, &H60, &H40, &H50, &H10, &H90
```

- PB4 正转，PB5 反转，PB6 加速，PB7 减速，PB6 + PB7 停机
  
  - 步进电机 接收一个脉冲转一步，通过 `await` 调节步间的等待时长控制转速
  
  - 主循环：若是正转或反转则转一步再等待 `await`，否则直接等待 `await`
  
  - 所谓的 `&H55, &HAA, &HFF` 没有特殊含义

```basic
declare sub await(byval a as word)
$regfile = "m16def.dat"
$crystal = 8000000

ddrd = &B11110000
ddrb = &B00000000 : portb = &B11110000

dim phase as byte, speed as integer, press_1 as byte, press_2 as byte
dim a(8) as byte, state as byte, step_length as byte

restore bianma
for phase = 1 to 8
    read a(phase)
next

phase = 8 : step_length = 100 : speed = 2000 : state = &H55

do
    gosub check
    select case state
    case &H55
        incr phase : if phase = 9 then phase = 1
        portd = a(phase)
    case &HAA
        decr phase : if phase = 0 then phase = 8
        portd = a(phase)
    end select
    await speed
loop until state = &HFF

end

bianma:
data &H80, &HA0, &H20, &H60, &H40, &H50, &H10, &H90

check:
    press_1 = pinb and &HF0
    if press_1 = &HF0 then
        return : waitms 20 : press_2 = pinb and &HF0
    end if
    if press_1 <> press_2 then return

    if press_2.7 = 0 and press_2.6 = 0 then
        state = &HFF
    elseif press_2.6 = 0 and speed > step_length then
        speed = speed - step_length
    elseif press_2.7 = 0 and speed < 5000 then
        speed = speed + step_length
    elseif press_2.4 = 0 then
        state = &H55
    elseif press_2.5 = 0 then
        state = &HAA
    end if
return

sub await(byval a as word)
    local temp as word
    for temp = 1 to a
    next
end sub
```

## 蜂鸣器唱歌操作，液晶显示屏

- 《茉莉花》

```basic
$regfile = "m16def.dat"
$crystal = 4000000

config portb.3 = output

dim a as integer, b as integer

do
    restore music_MoLiHua
    do
        read a : read b
        if a = 0 and b = 0 then exit do
        sound portb.3, a, b
        waitms 80
    loop
    wait 3
loop

end

music_MoLiHua:
data 200% , 759% , 100% , 759% , 100% , 638% , 100% , 568%,
data 100% , 470% , 100% , 470% , 100% , 568%
data 200% , 638% , 100% , 638%
data 100% , 568% , 400% , 638%
data 200% , 759% , 100% , 759% , 100% , 638% , 100% , 568%,
data 100% , 470% , 100% , 470% , 100% , 568%
data 200% , 638% , 100% , 638%
data 100% , 568% , 400% , 638%
data 200% , 638% , 200% , 638% , 200% , 638%
data 100% , 759% , 100% , 638%
data 200% , 568% , 200% , 568% , 400% , 638%
data 200% , 759% , 100% , 865% , 100% , 759%
data 200% , 638% , 100% , 759% , 100% , 865%
data 200% , 956% , 100% , 956% , 100% , 865% , 200% , 956%
data 100% , 759% , 100% , 865% , 100% , 956% , 100% , 759%
data 300% , 865% , 100% , 759%
data 200% , 638% , 100% , 568%
data 100% , 470% , 400% , 638%
data 200% , 865% , 100% , 759% , 100% , 638%
data 100% , 865% , 100% , 759% , 100% , 956% , 100% , 1136%
data 400% , 638% , 200% , 1136% , 200% , 956%
data 300% , 865% , 100% , 759% , 100% , 956% , 100% , 865%
data 100% , 956% , 100% , 1136% , 600% , 638%
data 0% , 0%
```

- LCD 显示屏

```basic
$regfile = "m16def.dat"
$crystal = 1000000

config lcd = 16 * 2
config lcdpin = pin, rs = porta.2, e = porta.3, db4 = porta.4, db5 = porta.5, db6 = porta.6, db7 = porta.7
cls : locate 1, 1

lcd "hello world"

end
```

## 4x4 按键操作，在 LCD 上显示按键数，或者用按键实现加法器

- 矩阵键盘显示数字 0 ~ F

```basic
$regfile = "m16def.dat"
$crystal = 1000000

config lcd = 16 * 2
config lcdpin = pin, rs = porta.2, e = porta.3, db4 = porta.4, db5 = porta.5, db6 = porta.6, db7 = porta.7

cls : locate 1, 1 : lcd "matrix keyboard" : locate 2, 1

dim in_put as byte, position as byte
config kbd = portd

do
    in_put = getkbd()
    select case in_put
    case 0
        lcd "0" : waitms 500 : incr position
    case 1
        lcd "1" : waitms 500 : incr position
    case 2
        lcd "2" : waitms 500 : incr position
    case 3
        lcd "3" : waitms 500 : incr position
    case 4
        lcd "4" : waitms 500 : incr position
    case 5
        lcd "5" : waitms 500 : incr position
    case 6
        lcd "6" : waitms 500 : incr position
    case 7
        lcd "7" : waitms 500 : incr position
    case 8
        lcd "8" : waitms 500 : incr position
    case 9
        lcd "9" : waitms 500 : incr position
    case 10
        lcd "A" : waitms 500 : incr position
    case 11
        lcd "B" : waitms 500 : incr position
    case 12
        lcd "C" : waitms 500 : incr position
    case 13
        lcd "D" : waitms 500 : incr position
    case 14
        lcd "E" : waitms 500 : incr position
    case 15
        lcd "F" : waitms 500 : incr position
    end select

    if position > 16 then
        cls : locate 1, 1 : lcd "matrix keyboard" : locate 2, 1
        position = 0
   end if
loop

end
```

- 两个个位数相加

```basic
$regfile = "m16def.dat"
$crystal = 1000000

config lcd = 16 * 2
config lcdpin = pin, rs = porta.2, e = porta.3, db4 = porta.4, db5 = porta.5, db6 = porta.6, db7 = porta.7

cls : locate 1, 1 : lcd "1-digit adder" : locate 2, 1

dim in_put as byte, number_1 as byte, number_2 as byte, result as byte, first as bit
first = 0
config kbd = portd

do
    in_put = getkbd()
    if in_put = 0 or in_put = 1 or in_put = 2 or in_put = 3 or in_put = 4 or in_put = 5 or in_put = 6 or in_put = 7 or in_put = 8 or in_put = 9 or in_put = 10 or in_put = 11 or in_put = 12 or in_put = 13 or in_put = 14 or in_put = 15 then
    	if first = 0  then
        	cls : locate 1, 1 : lcd "1-digit adder" : locate 2, 1
        	number_1 = in_put : lcd number_1; " + " : first = 1
    	elseif first = 1 then
           	number_2 = in_put : result = number_1 + number_2
        	lcd number_2; " = "; result : first = 0
    	end if
    end if
	wait 1
loop

end
```

## 中断的操作，包括中断嵌套、中断返回、要能有效的显示

- 中断的嵌套（int0 打断 int1）

```basic
$regfile = "m16def.dat"
$crystal = 1000000
config portc = output

config int0 = falling
config int1 = falling
on int0 int0_isr
on int1 int1_isr
enable interrupts : enable int0 : enable int1

do
    portc = &B01101110 : waitms 500
    portc = &B11111111 : waitms 500
loop

end

int0_isr:
    portc = &B11011011 : waitms 500
    portc = &B11111111 : waitms 500
    portc = &B11011011 : waitms 500
    portc = &B11111111 : waitms 500
return

int1_isr:
    enable interrupts : enable int0
    portc = &B10110101 : waitms 500
    portc = &B11111111 : waitms 500
    portc = &B10110101 : waitms 500
    portc = &B11111111 : waitms 500
return
```

## 定时器的操作（定时，以及各种 pwm 波形控制 LED，占空比）

- 定时两秒后灯全亮
    - 注意首先要让灯全灭

```basic
$regfile = "m16def.dat"
$crystal = 1000000

config timer0 = timer, prescale = 8
on ovf0 led
enable interrupts : enable ovf0
tcnt0 = 6

config portc = output : portc = &B11111111
dim i as integer : i = 0

do
loop

end

led:
    incr i
    if i = 1000 then
        portc = &B00000000
    end if
    tcnt0 = 6
return
```

### 亮 1s 熄 0.5s

- T/C0 CTC

```basic
$regfile = "m16def.dat"
$crystal = 1000000

config portb.3 = output : portb.3 = 0

dim number as integer : number = 0
dim level as byte : level = 0

config timer0 = timer, prescale = 8, compare = set, clear timer = 1
ocr0 = 250 
on oc0 oc0_isr
enable interrupts : enable oc0

tcnt0 = 0
start timer0

do
loop

end

' 500 = 1 * 500, 250 = 0.5 * 500

oc0_isr:
    if level = 1 then
        incr number
        if number > 500 then
            config timer0 = timer, prescale = 8, compare = set, clear timer = 1
            number = 0 : level = 0
            goto re_turn
        end if
    end if
    if level = 0 then
        incr number
        if number > 250 then
            config timer0 = timer, prescale = 8, compare = clear, clear timer = 1
            number = 0 : level = 1
            goto re_turn
        end if
    end if
re_turn:
return
```

- T/C0 快速 PWM

```basic
$regfile = "m16def.dat"
$crystal = 1000000

config portb.3 = output : portb.3 = 0

dim number as integer : number = 0
dim level as byte : level = 0

config timer0 = pwm, prescale = 8, compare pwm = clear down, clear timer = 1
ocr0 = 255
on oc0 oc0_isr
enable interrupts : enable oc0

tcnt0 = 5

do
loop

end

' 500 = 1 * 500, 250 = 0.5 * 500

oc0_isr:
    tcnt0 = 5
    if level = 0 then
        incr number
        if number > 500 then
            config timer0 = pwm, prescale = 8, compare pwm = clear up, clear timer = 1
            number = 0 : level = 1
            goto re_turn
        end if
    end if
    if level = 1 then
        incr number
        if number > 250 then
            config timer0 = pwm, prescale = 8, compare pwm = clear down, clear timer = 1
            number = 0 : level = 0
            goto re_turn
        end if
    end if
re_turn:
return
```

- T/C0 相位可调 PWM

```basic
$regfile = "m16def.dat"
$crystal = 1000000

config portb.3 = output : portb.3 = 0

dim number as integer : number = 0
dim level as byte : level = 0

config timer0 = pwm, prescale = 8, compare pwm = clear down, clear timer = 0
ocr0 = 255
on oc0 oc0_isr
enable interrupts : enable oc0

tcnt0 = 120
start timer0

do
loop

end

' 250 = 1 * 250, 125 = 0.5 * 250

oc0_isr:
    tcnt0 = 120
    if level = 0 then
        incr number
        if number > 250 then
            config timer0 = pwm, prescale = 8, compare pwm = clear up, clear timer = 0
            number = 0 : level = 1
            goto re_turn
        end if
    end if
    if level = 1 then
        incr number
        if number > 125 then
            config timer0 = pwm, prescale = 8, compare pwm = clear down, clear timer = 0
            number = 0 : level = 0
            goto re_turn
        end if
    end if
re_turn:
return
```

- T/C1 CTC

  - 这里若使用 `$crystal = 1000000`，则 `prescale = 1 or 8`，此时需要的 ocr1a 值太大，超出了 16 位寄存器的允许值

```basic
$regfile = "m16def.dat"
$crystal = 8000000

'config portd.4 = output : portd.4 = 0
config portd.5 = output : portd.5 = 0
dim state as bit : state = 0

'config timer1 = timer, prescale = 256, compare a = toggle, compare b = toggle, clear timer = 1
config timer1 = timer, prescale = 256, compare a = toggle, compare b = disconnect, clear timer = 1
on oc1a oc1a_isr
enable interrupts : enable oc1a
ocr1a = 10 : tcnt1 = 0

do
loop

end

'15625 = 0.5 * 8000000 / 256, 31250 = 1.0 * 8000000 / 256

oc1a_isr:
    if state = 0 then
        ocr1a = 15625 : state = 1
        goto re_turn
    end if
    if state = 1 then
        ocr1a = 31250 : state = 0
        goto re_turn
    end if
re_turn:
return
```

- T/C1 快速 PWM

  - 这里用了一个不好的方法：把 T/C1 转化成 T/C0 使用

```basic
$regfile = "m16def.dat"
$crystal = 1000000

config portd.5 = output : portd.5 = 0

dim number as integer : number = 0
dim level as byte : level = 0

config timer1 = pwm, prescale = 8, pwm = 8, compare a pwm = clear down, clear timer = 1
ocr1a = 255
on ovf1 ovf1_isr
enable interrupts : enable ovf1

tcnt1 = 5 

do
loop

end

ovf1_isr:
    tcnt1 = 5
    if level = 0 then
        incr number
        if number > 500 then
            config timer1 = pwm, prescale = 8, pwm = 8, compare a pwm = clear up, clear timer = 1
            number = 0 : level = 1
            goto re_turn
        end if
    end if
    if level = 1 then
        incr number
        if number > 250 then
            config timer1 = pwm, prescale = 8, pwm = 8, compare a pwm = clear down, clear timer = 1
            number = 0 : level = 0
            goto re_turn
        end if
    end if
re_turn:
return
```

- T/C1 相位可调 PWM

  - 这里再次用了一个不好的方法：把 T/C1 转化成 T/C0 使用

```basic
$regfile = "m16def.dat"
$crystal = 1000000

config portd.5 = output : portd.5 = 0

dim number as integer : number = 0
dim level as byte : level = 0

config timer1 = pwm, prescale = 8, pwm = 8, compare a pwm = clear down, clear timer = 0
ocr1a = 255
on ovf1 ovf1_isr
enable interrupts : enable ovf1

tcnt1 = 120

do
loop

end

ovf1_isr:
    tcnt1 = 120
    if level = 0 then
        incr number
        if number > 250 then
            config timer1 = pwm, prescale = 8, pwm = 8, compare a pwm = clear up, clear timer = 0
            number = 0 : level = 1
            goto re_turn
        end if
    end if
    if level = 1 then
        incr number
        if number > 125 then
            config timer1 = pwm, prescale = 8, pwm = 8, compare a pwm = clear down, clear timer = 0
            number = 0 : level = 0
            goto re_turn
        end if
    end if
re_turn:
return
```

## ADC 操作，包括根据转换结果控制 LED 亮暗，以及双通道的转换结果显示

- lcd 实时显示两个 ADC 的电压

```basic
$regfile = "m16def.dat"
$crystal = 4000000

config lcd = 16 * 2
config lcdpin = pin, rs = porta.2, e = porta.3, db4 = porta.4, db5 = porta.5, db6 = porta.6, db7 = porta.7
cls

config adc = free, prescaler = auto, reference = avcc
on adc adc_isr
enable interrupts : enable adc

dim x as word, y as single

do
loop

end

adc_isr:
    x = getadc(0)
    y = x : y = y / 1023 : y = y * 4.8
    locate 1, 1 : lcd y

    x = getadc(1)
    y = x : y = y / 1023 : y = y * 4.8
    locate 2, 1 : lcd y
return
```

- 根据 ADC 的电压控制 LED 亮暗

```basic
$regfile = "m16def.dat"
$crystal = 4000000

config adc = free, prescaler = auto, reference = avcc
on adc adc_isr
enable interrupts : enable adc

config portc = output : portc = &B11111111  

dim x as word, y as single

do
loop

end

adc_isr:
    x = getadc(0)
    y = x : y = y / 1023 : y = y * 4.8
    if y < 2 then
        portc = &B01101110
    elseif 2 <= y and y <= 3 then
        portc = &B11011011
    elseif y > 3 then
        portc = &B10110101
    end if
return
```

## 基本组件

### 宏定义

```basic
$regfile = "m16def.dat"
$crystal = 1000000
```

### LED 灯珠

```basic
config portc = output : portc = &B11111111

portc = &B01101110 : waitms 500
rotate portc, left/right : waitms 500

' all       -> portc = &B00000000
' red       -> portc = &B01101110
' yellow    -> portc = &B11011011
' green     -> portc = &B10110101
```

### 数码管

```basic
config porta.3 = output
config porta.4 = output
config portc = output

dim num(16) as byte, pos(6) as byte, i as byte, j as byte
restore number
for i = 1 to 16
    read num(i)
next
restore position
for j = 1 to 6
   read pos(j)
next

' what to display -> porta.3 = 1 : portc = ... : porta.3 = 0
' where to display -> porta.4 = 1 : portc = ... : porta.4 = 0
' waitms ...

number:
data &H3F, &H06, &H5B, &H4F, &H66, &H6D, &H7D, &H07, &H7F, &H6F
data &H77, &H7C, &H39, &H5E, &H79, &H71

position:
data &B11011111, &B11101111, &B11110111, &B11111011, &B11111101, &B11111110
```

### LCD 显示屏

```basic
config lcd = 16 * 2
config lcdpin = pin, rs = porta.2, e = porta.3, db4 = porta.4, db5 = porta.5, db6 = porta.6, db7 = porta.7
cls : locate 1, 1

lcd "hello world"
```

### 键盘

#### 行键盘

```basic
ddrb = &B00001000 : portb.1 = 1 : portb.4 = 1 : portb.5 = 1 : portb.6 = 1 : portb.7 = 1
ddrd = &B00001000 : portd.2 = 1 : portd.3 = 1
```

#### 矩阵键盘

```basic
config kbd = portd
dim in_put as byte

in_put = getkbd()
```

### 中断

```basic
config int0 = falling
config int1 = falling
on int0 int0_isr
on int1 int1_isr
enable interrupts : enable int0 : enable int1

int0_isr:
	...
return

int1_isr:
	...
return
```

### 定时计数器

### ADC

```basic
config adc = free, prescaler = auto, reference = avcc
on adc adc_isr
enable interrupts : enable adc

dim x as word, y as single

x = getadc(0)	'or getadc(1)
y = x : y = y / 1023 : y = y * 4.8
```

