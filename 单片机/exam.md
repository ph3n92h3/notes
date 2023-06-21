# exam

## LCD 仿真与实现：字符左移右移

### 仿真

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

### 实现

```basic
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

## 输入 中断 流水灯：INT0 实现某效果 INT1 实现某效果

```basic
$regfile = "m16def.dat"
$crystal = 1000000

config portc = output : portc = &B11111111
ddrd = &B11110011 : portd.2 = 0 : portd.3 = 0

do
    if pind.2 = 0 then  ' int0

    end if
    if pind.3 = 0 then  ' int1

    end if

' all       -> portc = &B00000000
' red       -> portc = &B01101110
' yellow    -> portc = &B11011011
' green     -> portc = &B10110101

loop

end
```

## LED 数码管：控制字符的左移和右移

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

' what to display -> porta.3 = 1 : portc = ... : porta.3 = 0
' where to display -> porta.4 = 1 : portc = ... : porta.4 = 0
' waitms ...

loop

number:
data &H3F, &H06, &H5B, &H4F, &H66, &H6D, &H7D, &H07, &H7F, &H6F
data &H77, &H7C, &H39, &H5E, &H79, &H71

position:
data &B11011111, &B11101111, &B11110111, &B11111011, &B11111101, &B11111110
```

## 步进电机 + 输入口：PB1 实现某效果 PB4 实现某效果（加速减速换方向）

这个真的很麻烦……这个是抄的老师的（PB4 正转，PB5 反转，PB6 加速，PB7 减速，PB6 + PB7 停机）

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

## AD 转换 + 控制，见前面提到的

- 同时在 lcd 显示屏上显示 AD0 和 AD1 的电压

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

- 根据单通道的电压值触发任务，例如 0 ~ 1V 点亮所有红灯，1 ~ 2V 唱歌等等

```basic
$regfile = "m16def.dat"
$crystal = 4000000

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
    if y < 2 then

    elseif 2 <= y and y <= 3 then

    elseif y > 3 then

    end if
return

' LED light

config portc = output : portc = &B11111111 

all       -> portc = &B00000000
red       -> portc = &B01101110
yellow    -> portc = &B11011011
green     -> portc = &B10110101

' sounder
Config Portb.3 = Output

Restore music_MoLiHua
Do
    Read a : Read b
    If a = 0 And b = 0 Then Exit Do
    Sound Portb.3, a, b
    Waitms 80
Loop
Wait 3

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

' LCD

config lcd = 16 * 2
config lcdpin = pin, rs = porta.2, e = porta.3, db4 = porta.4, db5 = porta.5, db6 = porta.6, db7 = porta.7
cls : locate 1, 1

lcd "hello world"
```

## 自由发挥：计算器 等

- 音乐播放器 + 歌曲名称显示 + 灯效

```basic
$regfile = "m16def.dat"
$crystal = 4000000

ddrb = &B00001000 : portb.1 = 1 : portb.4 = 1 : portb.5 = 1 : portb.6 = 1 : portb.7 = 1
ddrc = &B11111111
ddrd = &B00001000 : portd.2 = 1 : portd.3 = 1

config lcd = 16 * 2
Deflcdchar 0, 32,15,21,5,7,17,13,3
Deflcdchar 1, 9,26,11,29,32,14,10,14
config lcdpin = pin, rs = porta.2, e = porta.3, db4 = porta.4, db5 = porta.5, db6 = porta.6, db7 = porta.7

cls : lcd "Music Display" : lowerline : lcd "made by "; chr(0); chr(1)

config int0 = falling : config int1 = falling
on int0 int0_isr : on int1 int1_isr
enable interrupts : enable int0 : enable int1

dim duration as integer, tone as integer, key as bit : key = 0

do
    if pinb.1 = 0 then
        restore music_MoLiHua
        cls : lcd "mo li hua"
        goto sing

    elseif pinb.4 = 0 then
        restore music_ShiShangZhiYouMaMaHao
        cls : lcd "shi shang zhi" : lowerline : lcd "you ma ma hao"
        goto sing

    elseif pinb.5 = 0 then
        restore music_XinNianHao
        cls : lcd "xin nian hao"
        goto sing
    
    elseif pinb.6 = 0 then
        restore music_XiaoXiaoXing
        cls : lcd "xiao xiao xing"
        goto sing
    
    elseif pinb.7 = 0 then
        restore music_SuWeiAiJinXingQu
        cls : lcd "su wei ai" : lowerline : lcd "jin xing qu"
        goto sing
    end if
loop

end

sing:
    do
        read duration : read tone
        if duration = 0 and tone = 0 then exit do
        sound portb.3, duration, tone
        portc = rnd(256)
        waitms 100
    loop
    wait 2
return

int0_isr:
    key = 1
return

int1_isr:
    enable interrupts : enable int0
    
    do
        if key = 1 then
            key = 0
            goto re_turn
        end if
    loop
re_turn:
return

'   5      6      7     1     2     3     4     5     6     7     1     2
' ----   ----   ----   ---   ---   ---   ---   ---   ---   ---   ---   --- %
' 1276 | 1136 | 1012 | 956 | 865 | 759 | 716 | 638 | 568 | 506 | 470 | 426

music_MoLiHua:
data 200%, 759%, 100%, 759%, 100%, 638%, 100%, 568%, 100%, 470%, 100%, 470%, 100%, 568%, 200%, 638%, 100%, 638%, 100%, 568%, 400%, 638%
data 200%, 759%, 100%, 759%, 100%, 638%, 100%, 568%, 100%, 470%, 100%, 470%, 100%, 568%, 200%, 638%, 100%, 638%, 100%, 568%, 400%, 638%
data 200%, 638%, 200%, 638%, 200%, 638%, 100%, 759%, 100%, 638%, 200%, 568%, 100%, 568%, 100%, 638%, 400%, 638%
data 200%, 759%, 100%, 865%, 100%, 759%, 200%, 638%, 100%, 759%, 100%, 865%, 200%, 956%, 100%, 956%, 100%, 865%, 400%, 956%
data 100%, 759%, 100%, 865%, 100%, 956%, 100%, 759%, 300%, 865%, 100%, 759%, 200%, 638%, 100%, 568%, 100%, 470%, 400%, 638%
data 200%, 865%, 100%, 759%, 100%, 638%, 100%, 865%, 100%, 759%, 100%, 956%, 100%, 1136%, 400%, 1276% 
data 0% , 0%

music_ShiShangZhiYouMaMaHao:
data 300%, 568%, 100%, 638%, 200%, 759%, 200%, 638%, 200%, 470%, 100%, 568%, 100%, 638%, 400%, 638%
data 200%, 759%, 100%, 638%, 100%, 568%, 200%, 638%, 100%, 759%, 100%, 865%, 100%, 956%, 100%, 1136%, 100%, 638%, 100%, 759%, 400%, 865%
data 300%, 865%, 10%, 759%, 200%, 638%, 100%, 638%, 100%, 568%, 300%, 759%, 100%, 865%,400%, 956%
data 300%, 638%, 100%, 759%, 100%, 865%, 100%, 956%, 100%, 1136%, 100%, 956%, 400%, 1276%
data 0%, 0%

music_XinNianHao:
data 100%, 956%, 100%, 956%, 200%, 956%, 200%, 1276%
data 100%, 759%, 100%, 759%, 200%, 759%, 200%, 956%
data 100%, 956%, 100%, 759%, 200%, 638%, 200%, 638%
data 100%, 716%, 100%, 759%, 400%, 865%
data 100%, 865%, 100%, 759%, 200%, 716%, 200%, 716%
data 100%, 759%, 100%, 865%, 200%, 759%, 200%, 956%
data 100%, 956%, 100%, 759%, 200%, 865%, 200%, 1276%
data 100%, 1276%, 100%, 865%, 400%, 956%
data 0%, 0%

music_XiaoXiaoXing:
data 200%, 956%, 200%, 956%, 200%, 638%, 200%, 638%, 200%, 568%, 200%, 568%, 400%, 638%
data 200%, 716%, 200%, 716%, 200%, 759%, 200%, 759%, 200%, 865%, 200%, 865%, 400%, 956%
data 200%, 638%, 200%, 638%, 200%, 716%, 200%, 716%, 200%, 759%, 200%, 759%, 400%, 865%
data 200%, 638%, 200%, 638%, 200%, 716%, 200%, 716%, 200%, 759%, 200%, 759%, 400%, 865%
data 0%, 0%

music_SuWeiAiJinXingQu:
' 100% for one bit-time
data 100%, 1136%, 100%, 759%, 50%, 716%, 25%, 759%, 25%, 865%, 100%, 759%
data 50%, 865%, 25%, 865%, 25%, 956%, 50%, 865%, 50%, 1012%, 50%, 1276%, 25%, 1136%, 25%, 1012%, 100%, 1012%
data 100%, 1136%, 100%, 759%, 50%, 716%, 25%, 759%, 25%, 865%, 100%, 759%
data 50%, 865%, 25%, 865%, 25%, 956%, 50%, 865%, 50%, 1012%, 50%, 1276%, 25%, 1136%, 25%, 1012%, 100%, 1012%

data 50%, 470%, 50%, 506%, 50%, 470%, 50%, 568%, 50%, 426%, 50%, 470%, 50%, 426%, 50%, 506%
data 50%, 380%, 50%, 426%, 50%, 380%, 50%, 470%, 50%, 426%, 50%, 470%, 50%, 426%, 50%, 506%
data 50%, 470%, 50%, 506%, 50%, 470%, 50%, 568%, 50%, 426%, 50%, 470%, 50%, 426%, 50%, 506%
data 50%, 380%, 50%, 426%, 50%, 380%, 50%, 470%, 50%, 426%, 50%, 470%, 50%, 426%, 50%, 506%

data 50%, 568%, 50%, 470%, 50%, 568%, 50%, 470%, 50%, 568%, 50%, 470%, 50%, 568%, 50%, 470%
data 50%, 568%, 50%, 470%, 50%, 568%, 50%, 470%, 50%, 568%, 50%, 470%, 50%, 568%, 50%, 470%

data 100%, 568%, 75%, 568%, 25%, 638%, 50%, 568%, 100%, 380%, 50%, 568%
data 100%, 506%, 75%, 506%, 25%, 568%, 150%, 506%, 50%, 506%
data 100%, 470%, 75%, 470%, 25%, 426%, 50%, 380%, 100%, 470%, 50%, 426%
data 100%, 380%, 75%, 380%, 25%, 426%, 200%, 380%

data 100%, 380%, 75%, 380%, 25%, 426%, 50%, 380%, 100%, 568%, 50%, 380%
data 100%, 330%, 75%, 330%, 25%, 380%, 150%, 426%, 50%, 426%
data 100%, 380%, 100%, 426%, 100%, 470%, 75%, 506%, 25%, 568%
data 100%, 638%, 75%, 638%, 25%, 568%, 50%, 506%, 150%, 759%

data 0%, 0%
```