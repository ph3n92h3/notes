# note

关于电路板上跳线帽等的说明

1. KO1

    - 在电路板最左边，在电路图左下角框右上角
    - 跳线帽插在 下，讯响器和步进电机可正常工作

2. KB1

    - 在电路板上数码管左侧，在电路图右下角
    - 跳线帽插在 右，完成数码管 一位显示
    - 跳线帽插在 左，完成数码管 六位扫描（考试内容）

3. P7

    - 在电路板上数码管下方，在电路图中上
    - 跳线帽竖向插入，连接单片机和 LED 阴极

4. P9, P10, P11

    - 在电路板上单片机右侧，在电路图右上 PWM 框中
    - 跳线帽插在 右，完成定时计数器（OC0, OC1 见电路图）

5. WE1

    - 在电路板上数码管左侧，在电路图左侧中间
    - 适当调节以消除 1602 显示器鬼影

6. WE2, WE3

    - 在电路板上单片机左侧，在电路图右下中间

7. 理清楚如果数码管显示有问题可能是哪里虚焊了：数码管、573（下面那个控制笔画，上面那个控制“是哪个块”）、单片机

8. 做矩阵键盘时需要把电路板左侧的 2003 集成块拔出

## minimal program

```basic
'（仿真）LED 闪烁
$sim    '使用 BASCOM-AVR 仿真时需加入此命令，之后会自动跳过 wait 语句
$regfile = "m16def.dat"
$crystal = 1000000

config portc = output    '仅调用 portc，默认为 LED

do
    portc = &B01010101 : waitms 200
    portc = &B10101010 : waitms 200
loop

end
```

```basic
'LED 闪烁，与仿真程序的区别仅为删去了 $sim 命令
$regfile = "m16def.dat"
$crystal = 1000000

config portc = output

do
    portc = &B01010101 : waitms 200
    portc = &B10101010 : waitms 200
loop

end
```

## 通用 I/O 输出

### LED 数码管

```basic
'轮流显示 L O V E 四个字母，LED 数码管无法同时显示不同样式的符号
$regfile = "m16def.dat"
$crystal = 1000000

config porta.3 = output
config porta.4 = output
config portc = output

'porta.3 = 1，定义数码管上显示的字符
'porta.4 = 1，定义要发光的数码管，同时相同位置的 LED 灯珠会发光

do
    porta.3 = 1 : portc = &B00111000 : porta.3 = 0    '请回忆八段数码管的编码
    porta.4 = 1 : portc = &B11101111 : porta.4 = 0    '0 表示亮，1 表示亮
    waitms 200 'L

    porta.3 = 1 : portc = &B00111111 : porta.3 = 0
    porta.4 = 1 : portc = &B11110111 : porta.4 = 0
    waitms 200 'O

    porta.3 = 1 : portc = &B00111110 : porta.3 = 0
    porta.4 = 1 : portc = &B11111011 : porta.4 = 0
    waitms 200 'V

    porta.3 = 1 : portc = &B01111001 : porta.3 = 0
    porta.4 = 1 : portc = &B11111101 : porta.4 = 0
    waitms 200 'E
loop

end
```

```basic
'从 1 到 F 轮流显示，并带有某种花式
$regfile = "m16def.dat"
$crystal = 1000000

config porta.3 = output
config porta.4 = output
config portc = output

dim a(16) as byte
dim b(6) as byte
dim i as byte
dim j as byte

restore daima
for i = 1 to 16
    read a(i)
next i

restore xuanma
for j = 1 to 6
    read b(j)
next j

i = 1 : j = 1
do
    porta.3 = 1 : portc = a(i) : porta.3 = 0
    porta.4 = 1 : portc = b(i) : porta.4 = 0
    i = i + 1 : j = j + 1
    if i > 16 then i = 1
    if j > 6 then j = 1
    waitms 100
loop

end

daima:    '1 到 F 的编码，
data &H3F, &H06, &H5B, &H4F, &H66, &H6D, &H7D, &H07
data &H7F, &H67, &H77, &H7C, &H39, &H5E, &H79, &H71

xuanma:    '暂时未知作用
data &HFE, &HFD, &HFB, &HF7, &HEF, &HDF
```

### 1602 字符液晶显示器

```basic
$regfile = "m16def.dat"
$crystal = 1000000

config lcd = 16 * 2    '表示液晶显示器的尺寸
config lcdpin = pin, rs = porta.2, e = porta.3, db4 = porta.4, db5 = porta.5, db6 = porta.6, db7 = porta.7    '某个固定的东西
cls    '清屏

locate 1, 1    '定义光标位置
lcd "hello"    '显示字符串
lowerline    '下一行
lcd "world"

do
    display on : waitms 200
    display off : waitms 200
loop

end
```

### 步进电机

```basic
'逆时针转一周，顺时针转一周
$regfile = "m16def.dat"
$crystal = 1000000

config portd = &B11110000    '调用步进电机

dim x as byte
dim y as integer
dim f(8) as byte

restore phases
for x = 1 to 8
   read f(x)
next x
x = 1

do
    for y = 1 to 4096        '4096 为转动一周
        portd = f(x)
        waitms 1
        incr x                '逆时针转动
        if x = 9 then x = 1
    next y
    for y = 1 to 4096
        portd = f(x)
        waitms 1
        decr x
        if x = 0 then x = 8
   next y
loop

end

phases:
data &H80, &HA0, &H20, &H60
data &H40, &H50, &H10, &H90
```

速度也是可以调的，之后补上这一点

### 声响

```basic
'音乐 《茉莉花》
```

### 单行键盘和矩阵键盘

```basic
'单行键盘
$regfile = "m16def.dat"
$crystal = 8000000

ddrb = &B00001111
portb.4 = 1 : portb.5 = 1 : portb.6 = 1 : portb.7 = 1
ddrd = &B11110011
portd.2 = 0 : portd.3 = 0

config lcd = 16 * 2
config lcdpin = pin, rs = porta.2, e = porta.3, db4 = porta.4, db5 = porta.5, db6 = porta.6, db7 = porta.7
cls : locate 1, 1
lcd "welcome to world"
locate 2, 1

dim i as byte
do
    if pinb.4 = 0 then lcd "1" : waitms 100 : incr i
    if pinb.5 = 0 then lcd "2" : waitms 100 : incr i
    if pinb.6 = 0 then lcd "3" : waitms 100 : incr i
    if pinb.7 = 0 then lcd "4" : waitms 100 : incr i
    if pind.2 = 0 then lcd "5" : waitms 100 : incr i
    if pind.3 = 0 then lcd "6" : waitms 100 : incr i

    if i > 16 then
        cls : locate 1, 1 : lcd "welcome to world" : locate 2, 1
        i = 0
    end if
loop

end
```

```basic
'矩阵键盘
$regfile = "m16def.dat"
$crystal = 4000000

config lcd = 16 * 2
config lcdpin = pin, rs = porta.2, e = porta.3, db4 = porta.4, db5 = porta.5, db6 = porta.6, db7 = porta.7
cls : locate 1, 1
lcd "hello world"
locate 2, 1

dim i as byte, k as byte
k = 0
config kbd = portd

do
    i = getkbd()
    if i = 0 then
        lcd "0" : waitms 500 : incr k
    end if
    if i = 1 then
        lcd "1" : waitms 500 : incr k
    end if
    if i = 2 then
        lcd "2" : waitms 500 : incr k
    end if

    if k > 16 then
        cls : locate 1, 1 : lcd "welcome to world" : locate 2, 1
        k = 0
    end if
loop

end
```

## 中断

中断的作用：实现实时处理、实现分时操作、进行故障处理、待机状态的唤醒

一些名词：中断源（检测外部、接受内部）、中断允许（独立的中断允许、全局允许）、终端保护（断点保护、现场保护）、中断级别、中断嵌套（AVR 单片机不允许）、中断服务程序、中断返回

- 中断源：ATmega16 单片机有 21 个中断源

- 中断向量：中断响应程序的入口地址，每个中断向量占有 Flash 的 2 个字空间/ 4 个字节

- 中断触发方式：上升沿下降沿触发（脉宽变化需要维持大于一个时钟周期）、高电平低电平触发（低电平触发，该电平要维持到当前指令完成）、电平变化触发

### 中断优先级

1. 低地址中断优先级高于高地址

2. 固定的硬件优先级，不支持软件重新设定

3. 同时发生，从高到低执行

4. 中断不允许嵌套。若想实现嵌套，需在中断服务程序中使用指令使能全局中断

### 中断响应条件

1. 指定中断发生（指定中断 标志位 置 1）

2. 指定中断允许（指定中断 允许位 置 1）

3. 全局允许（全局中断允许标志位 为 1）

### 中断响应过程（执行中断程序前）

1. 清零状态寄存器 SREG 中的全局中断允许标志位（禁止响应其他中断）

2. 中断标志位清零，将中断断点地址（即当前程序计数器 PC 的值）压入堆栈，并将 SP 寄存器中的堆栈指针减 2

3. 将中断向量压入程序计数器 PC

### 中断返回过程（执行中断程序后）

1. 栈顶弹出 2 个字节至程序计数器 PC，并将SP寄存器中的堆栈指针加 2

2. 置状态寄存器 SREG 中的全局中断允许标志位 1（允许响应其他中断）

### 外部中断触发方式

|                  | INT0  | INT1  |    INT2     |    说明    |
| :--------------: | :---: | :---: | :---------: | :--------: |
|    上升沿触发    |  yes  |  yes  | yes（异步） |            |
|    下降沿触发    |  yes  |  yes  | yes（异步） |            |
| 任意电平变化触发 |  yes  |  yes  |      -      |            |
|    低电平触发    |  yes  |  yes  |      -      | 无中断标志 |

- 对 int0 和 int1 的上升沿和下降沿变化的识别，需要 I/O 口时钟的存在，属于一种同步边沿触发。可能引起中断丢失

- 对 int2 上升沿和下降沿变化识别,   不需要 I/O 口时钟的存在，属于异步边沿触发。可以唤醒休眠模式的 MCU

- 低电平触发的中断方式也可以唤醒 MCU，但是需要维持一定时间。唤醒单片机：

    - 边沿触发，脉宽 > 50 ns
    - 低电平触发，电平需要被看门狗采样两个周期（T = 1 µs）

- 软件中断：如果INT0~2中断允许，即使PD2、PD3和PB2设置为输出方式工作，也可产生中断

```basic
'int0、int1中断配置语句
config int0 = falling/rising/change/low_level ：config int0 = falling/rising/change/low_level
on int0 int0_isr ： on int1 int1_isr    '两个 _isr 是需要自己写的中断服务程序（）其实就是两个子程序
enable interrupts : enable int0 : enable int1
```

```basic
'int0、int1 按键中断实验（单数码管显示）
$regfile = "m16def.dat"
$crystal = 1000000

config portc = output
config int0 = falling ：config int0 = falling
on int0 int0_isr ： on int1 int1_isr
enable interrupts : enable int0 : enable int1

dim char(16) as byte
dim H_number as byte

restore daima
for H_number = 1 to 16
    read char(H_number)
next H_number

H_number = 1
do
    portc = char(H_number)
loop

end

daima:
data &HED, &H81, &HF4, &HB5, &H99, &H3D, &H7D, &H85
data &HFD, &HBD, &HDD, &H79, &H6C, &HF1, &H7C, &H5C

int0_isr:
    H_number = H_number + 1
    if H_number > 16 then H_number = 1
return

int1_isr:
    H_number = H_number - 1
    if H_number < 1 then H_number = 16
return
```

## 定时计数器 T/C

### Introduction

- 计数长度：8 位 / 16 位

- 计数源：内部时钟源（定时器、无输入引脚），外部时钟源（计数器、有输入引脚）

- T/C 事件：溢出、比较匹配、捕捉

- 输出端口：用于对 T/C 事件的输出硬件响应

- 可编程分频器：对计数源进行预分频

- 专用寄存器：计数寄存器 TCNTx、控制寄存器 TCCRx、输出比较寄存器 OCRx、输入捕获寄存器 ICRx

- 共用寄存器：中断标志寄存器 TIFR、中断屏蔽寄存器 TIMSK

ATmega16 T/C 资源：

- 8 位 T/C0：定时、计数、比较匹配、脉冲宽度调制（PWM）

- 16 位 T/C1: 定时、计数、输入捕获、有两个输出比较寄存器（OCR1A、OCR1B）、两个比较匹配输出端口、PWM

- 8 位 T/C2: 对单片机时钟源的定时功能、对 32768Hz 独立时钟源的定时功能、比较匹配、PWM

T/C 寄存器、中断事件、引脚

|     |     |     |
| --- | --- | --- |

### T/C0

- 8 位

- 对系统时钟计数或外部事件计数

- 比较匹配时自动清零（自动重装）

- 输出 PWM 信号

- 作为定时器可编程预分频，分频比 1/8、1/64、1/256、1/1024

- 溢出和比较匹配中断（TOV0、OCF0）

- T/C2 = T/C0 + 允许使用外部 32kHz 手表晶振作为独立计数时钟源

#### 端口和寄存器

1. 端口

    - 输入端口 PB0
    - 输出端口 PB3

2. 内部寄存器

    - 计数寄存器 TCNT0 存放计数值
    - 输出比较寄存器 OCR0 存放输出比较值
    - 控制寄存器 TCCR0 存放控制字，决定计数源、工作模式、输出引脚状态

3. 共用寄存器（与 T/C1、T/C2 共用）

    - 中断标志寄存器 TIFR 存放溢出、输出匹配等中断标志
    - 中断屏蔽寄存器 TIMSK 存放中断使能标志

各个寄存器的内部结构

工作模式：

- WGMO[1:0] = 0：普通模式

- WGMO[1:0] = 2：比较匹配清零计数器 CTC 模式

- WGMO[1:0] = 3：快速 PWM 模式

- WGMO[1:0] = 1：相位可调 PWM 模式

#### WGMO[1:0] = 0：普通模式

TCNT0 寄存器：0x00 -> 0x01 -> ... -> 0xFF -> 0x00 -> ...

- 0xFF -> 0x00 时，溢出标志位 TOV0 置 1，用于申请 T/C0 溢出中断；一旦溢出中断被响应，则TOV0自动硬件清零

- 用户可以随时改变 TCNT0 的值

- 运行过程由硬件完成，无须软件干预

- 达到某既定的状态之后可以产生中断事件，通过中断响应形成各种应用

根据任务和系统硬件选用 T/C -> 确定信号源 -> 确定工作模式 -> 编写中断服务程序

```basic
'配置定时器
config timer0 = timer, prescale = n 'n = 1/8/64/256/1024
'配置计数器
config timer0 = counter, edge = rising/falling
```

```basic
'T/C0 作为 定时器

'主程序配置部分
config timer0 = timer, prescale = n 'n = 1/8/64/256/1024
on ovf0 timer0_isr    '溢出时执行中断服务子程序 timer0_isr
enable interrupts : enable ovf0
load timer0, timer0_num    '若此处 timer0_num = 30，则 timer0 初始值为 256 - 30 = 226，T/C0 从这里开始 + 1
start timer0    '启动为 start、停止为stop

'中断服务子程序
timer0_isr:
...
return
```

```basic
'定时 2 s，讯响
$regfile = "m16def.dat"
$crystal = 1000000

dim a as word : a = 0
config portb.3 = output

config timer0 = timer, prescale = 8
on ovf0 xunxiang
enable interrupts : enable ovf0
tcnt0 = 6    '这里直接指定 TCNT0 寄存器的值
start timer0

do
    nop
loop

end

xunxiang:
    a = a + 1
    if a > 999 then
        do
            portb.3 = 0 : waitms 2
            portb.3 = 1 : waitms 2
        loop
    end if
    tcnt0 = 6
    start timer0
return
```

```basic
'T/C0 作为 计数器

'主程序配置部分
config timer0 = counter, edge = rising/falling
on ovf0 counter0_isr    '溢出时执行中断服务子程序 timer0_isr
enable interrupts : enable ovf0
counter0 = 30
start counter0    '启动为 start、停止为stop

'中断服务子程序
counter0_isr:
...
return
```

#### WGMO[1:0] = 2：比较匹配清零计数器 CTC 模式

输出引脚 OC0：

- 输出引脚（普通 I/O 端口 PB3）在硬件电路（波形发生器）作用下产生

- 控制寄存器 TCCR0 第 4、5 位即 COM0[1:0] 控制输出方式/输出波形形状

| 第五位 COMO1 | 第四位 COMO0 |                                         |
| :----------: | :----------: | :-------------------------------------: |
|      0       |      0       | PB3 为通用 I/O 引脚（OC0 与引脚不连接） |
|      0       |      1       |           比较匹配时 OC0 取反           |
|      1       |      0       |           比较匹配时清零 OC0            |
|      1       |      1       |           比较匹配时置位 OC0            |

```basic
'配置比较匹配输出模式
config timer0 = timer, prescale 1/8/64/256/1024, compare = clear/set/toggle/disconnect, clear timer = 1/0
'compare = clear/set/toggle/disconnect -> 输出引脚 OC0 在比较匹配时 清零/置位/翻转/不做输出连接
'clear timer = 1/0 -> 比较匹配时是否清零计数寄存器 TCNT0，= 1 时为 CTC 模式
```

CTC 模式输出引脚的输出频率：$f_{\text{OC0}} = \frac{f_{\text{clk\_I/O}}}{2N \times (1 + \text{OCR0})}$

- N = 1/8/64/256/1024

- 最大输出频率：$f_{\text{OC0}}(N = 1, \text{OCR0} = \texttt{0x00}) = \frac{1}{2} f_{\text{clk\_ I/O}}$

- OC0 的输出方式为触发方式时（COM0[1:0] = 1）T/C0 将产生占空比为 50% 的 PWM 波形

- 修改 OCR0 的值，可能会导致比较匹配丢失

```basic
'T/C0 的 CTC 模式控制 LED 亮 1s 熄 0.5s
$regfile = "m16def.dat"
$crystal = 1000000

config portb.3 = output
portb.3 = 0

dim plus as Word : plus = 0    '累加次数
dim level as byte : level = 0    '设置高低电平

config timer0 = timer, prescale = 8, compare = set, clear timer = 1
ocr0 = 250    '比价匹配值，定时 0.002s 一个累加周期，累加完毕后清零
on oc0 oc0_isr
enable interrupts : enable oc0

tcnt0 = 0
start timer0

do
loop

end

oc0_isr:
    if level = 0 then
        plus = plus + 1
        if plus > 250 then
            config timer0 = timer, prescale = 8, compare = clear, clear timer = 1
            plus = 0
            level = 1
            goto xh
        end if
    end if
    if level = 1 then
        plus = plus + 1
        if plus > 500 then
            config timer0 = timer, prescale = 8, compare = set, clear timer = 1
        plus = 0
        level = 0
        end if
    end if
xh:
return
```

#### WGM0[1:0] = 3：快速 PWM 模式

- 快速 PWM 模式的频率：$f_{\text{OC0\_ PWM}} = \frac{f_{\text{clk\_ I/O}}}{256 N}$

- 控制寄存器 TCCR0 第 4、5 位即 COM0[1:0] 控制输出方式/输出波形形状

| 第五位 COMO1 | 第四位 COMO0 |                                                |
| :----------: | :----------: | :--------------------------------------------: |
|      0       |      0       |    PB3 为通用 I/O 引脚（OC0 与引脚不连接）     |
|      0       |      1       |                      保留                      |
|      1       |      0       | 比较匹配时清零，计数值达FF时置位（down，正向） |
|      1       |      1       |  比较匹配时置位，计数值达FF时清零（up，反向）  |

```baisc
'快速 PWM 模式
config timer0 = pwm, prescale = 1/8/64/256/1024, compare pwm = clear up/clear down, clear timer = 1
'clear timer = 1 是快速 PWM 模式，clear timer = 0 是相位修正 PWM 模式
```

1. 快速 PWM 模式 比 相位可调 PWM 模式频率高，用于 电源调整、DAC等

2. 设置OCR0的值，可以获得不同占空比的脉冲波形

3. 特殊输出

    - OCR0 = 0x00 产生周期为 MAX + 1 的窄脉冲
    - OCR0 = 0xFF 产生恒定的高（down）低（up）电平

```basic
'T/C0 的快速 PWM 模式控制 LED 亮 1s 熄 0.5s
$regfile = "m16def.dat"
$crystal = 1000000

config portb.3 = output
portb.3 = 0

dim plus as Word : plus = 0    '累加次数
dim level as byte : level = 0    '设置高低电平

config timer0 = pwm, prescale = 8, compare pwm = clear down, clear timer = 1
ocr0 = 255    '比较匹配值，定时 0.002s 一个累加周期，累加完毕后清零
on oc0 oc0_isr
enable interrupts : enable oc0

tcnt0 = 5    '修正
start timer0

do
loop

end

oc0_isr:
    tcnt0 = 5    '修正
    if level = 0 then
        plus = plus + 1
        if plus > 500 then
            config timer0 = pwm, prescale = 8, compare pwm = clear up, clear timer = 1
            plus = 0
            level = 1
            goto xh
        end if
    end if
    if level = 1 then
        plus = plus + 1
        if plus > 250 then
            config timer0 = pwm, prescale = 8, compare pwm = clear down, clear timer = 1
            plus = 0
            level = 0
        end if
    end if
xh:
return
```

#### WGM0[1:0] = 1：相位可调 PWM 模式

- 快速 PWM 模式的频率：$f_{\text{OC0\_ PCPWM}} = \frac{f_{\text{clk\_ I/O}}}{510 N}$

- 控制寄存器 TCCR0 第 4、5 位即 COM0[1:0] 控制输出方式/输出波形形状

| 第五位 COMO1 | 第四位 COMO0 |                                                |
| :----------: | :----------: | :--------------------------------------------: |
|      0       |      0       |    PB3 为通用 I/O 引脚（OC0 与引脚不连接）     |
|      0       |      1       |                      保留                      |
|      1       |      0       | 向上计数时比较匹配清零，向下计数时比较匹配置位 |
|      1       |      1       | 向上计数时比较匹配置位，向下计数时比较匹配清零 |

```basic
'相位可调 PWM 模式
config timer0 = pwm, prescale = 1/8/64/256/1024, compare pwm = clear up/clear down, clear timer = 0
'clear timer = 1 是快速 PWM 模式，clear timer = 0 是相位修正 PWM 模式
```

1. 双程计数方式，频率比快速PWM低，用于马达控制等

2. 通过设置寄存器OCR0的值，可以获得不同占空比的脉冲波形

3. 特殊输出

    - COM0[1:0] = 2, OCR0 = 0xFF 输出恒定高电平
    - OCR0 = 0x00 输出恒定低电平

```basic
'T/C0 的相位可调 PWM 模式控制 LED 亮 1s 熄 0.5s（未修正）
$regfile = "m16def.dat"
$crystal = 1000000

config portb.3 = output
portb.3 = 0

dim plus as Word : plus = 0    '累加次数
dim level as byte : level = 0    '设置高低电平

config timer0 = pwm, prescale = 8, compare pwm = clear down, clear timer = 0
ocr0 = 255    '比较匹配值，定时 0.002s 一个累加周期，累加完毕后清零
on oc0 oc0_isr
enable interrupts : enable oc0

tcnt0 = 120
start timer0

do
loop

end

oc0_isr:
    tcnt0 = 120
    if level = 0 then
        plus = plus + 1
        if plus > 250 then
            config timer0 = pwm, prescale = 8, compare pwm = clear up, clear timer = 0
            plus = 0
            level = 1
            goto xh
        end if
    end if
    if level = 1 then
        plus = plus + 1
        if plus > 125 then
            config timer0 = pwm, prescale = 8, compare pwm = clear down, clear timer = 0
            plus = 0
            level = 0
        end if
    end if
xh:
return
```

### T/C1

#### 端口和寄存器

1. 端口

    - 输入端口 PB1
    - 输出端口 PD4, PD5

2. 内部寄存器

    - 计数寄存器 TCNT1 存放计数值
    - 输出比较寄存器 OCR1A, OCR1B 存放输出比较值
    - 控制寄存器 TCCR1 决定计数源、工作模式、输出模式
    - 输入捕捉寄存器 ICR1 记录捕捉事件发生时的 TCNT1 中的计数值

3. 共用寄存器

```basic
'T/C1 定时器
config timer1 = timer, prescale = 1/8/64/256/1024

load timer1, 30

on ovf1 timer1_isr
enable interrupts : enable ovf1
start timer1
```

```basic
'T/C1 计数器
config timer1 = counter, edge = rising/falling

counter1 = ...

on ovf1 counter1_isr
enable interrupts : enable ovf1
start counter1
```

#### 输入捕捉单元 ICP1

ICP1 端子发生预期信号或 A/D 转换传来预期信号时，捕捉 timer1 TCNT1 的数值，并请求中断

```basic
'T/C1 输入捕获单元 ICP1
config timer1 = timer, prescale = 1/8/64/256/1024, noise cancel = 1/0, capture edge = rising/falling
'noise cancel = 1/0 是否对端子采样四次除噪
'capture edge = rising/falling

timer1 = 0    'TCNT1 寄存器清零

on icp1 icp1_isr
enable interrupts : enable icp1
start timer1
```

```basic
'通过捕获光电门信号测速（无法实际运行）
$regfile = "m16def.dat"
$crystal = 1000000

dim x0 as word, x as word, y as word, r as byte, v as word
x0 = 0 : x = 0 : y = 0 : r = 0

config timer1 = timer, prescale = 1024, capture edge = rising, noise cancel = 0
on capture1 isr
enable capture1 : enable intertupts
timer1 = 0

do
loop

end

isr:
    x0 = capture1
    incr r
    if r = 1 then x = x0    '记录第一次遮挡光电门
    if r = 50 then            '记录第五十次遮挡光电门
        y = x0 : v = y - x
        print v
        timer1 = 0 : r = 0
    end if
return
```

#### CTC

```basic
config timer1 = timer(/counter), prescale = 1/8/64/256/1024(edge = rising/falling), compare a = set/clear/toggle/disconnect, compare b = set/clear/toggle/disconnect, clear timer = 1

on oc1a oc1a_isr
compare1a = ...
enable interrupts : enable oc1a
start timer1
```

```basic
'T/C1 CTC 模式从 OC1A 口输出亮 1s 熄 0.5s
$regfile = "m16def.dat"
$crystal = 8000000

config portd.4 = output : portd.4 = 0
config portd.5 = output : portd.5 = 0
'上面两句相当于：ddrd = &B00110000
dim r as byte : r = 0    '控制计数值

config timer1 = timer, prescale = 256, compare a = toggle, compare b = toggle, clear timer = 1
ocr1a = 10
on oc1a oc1a_isr
enable interrupts : enable oc1a
tcnt1 = 0
start timer1

do
loop

end

oc1a_isr:
    if r = 0 then
        ocr1a = 15625 : r = 1    '15625 = 0.5 * 8000000 / 256
        goto xh
    end if
    if r = 1 then
        ocr1a = 31250 : r = 0    '31250 = 1.0 * 8000000 / 256
    end if
xh:
return
```

```basic
'T/C1 CTC 模式 精密秒脉冲信号发生器
$regfile = "m16def.dat"
$crystal = 4096000

config timer1 = timer, prescale = 1024, compare a = toggle, compare b = disconnect, clear timer = 1
ddrd = &b00100000
compare1a = 2000    '2000 = 0.5 * 4096000 / 1024
start timer1

do
loop

end
```

#### PWM

```basic
config timer1 = PWM, prescale = 1/8/64/256/1024, PWM = 8/9/10, compare a pwm = clear up/clear down, compare b pwm = clear up/clear down, clear timer = 1/0
'clear timer = 1/0 -> 快速 pwm/相位修正 pwm

compare1a = x / pwm1a = x
compare1b = y / pwm1b = y
start timer1
```

```basic
'T/C1 pwm 模式控制占空比 2:1，绿灯黄灯交替闪烁
$regfile = "m16def.dat"
$crystal = 1000000

config portd.4 = output : portd.4 = 1
config portd.5 = output : portd.5 = 0

config timer1 = PWM, prescale = 1024, PWM = 10, compare a pwm = clear down, compare b pwm = clear up
ocr1a = 682 : ocr1b = 682    '682 = 1024 * 2/3
tcnt1 = 0
start timer1

do
loop

end
```

```basic
'T/C1 PWM 波形演示程序：一个周期性的程序，一个周期内闪光时间越来越短
$regfile = "m16def.dat"
$crystal = 4096000

ddrd = &b00110000

config timer1 = pwm, prescale = 1024, pwm = 10, compare a pwm = clear up, compare b pwm = clear down, clear timer = 1
compare1a = 500
compare1b = 500
on ovf1 ovf1_isr
enable interrupts : enable ovf1

do
loop

end

ovf1_isr:
    compare1a = compare1a + 100
    if compare1a >= 1024 then compare1a = 500
    compare1b = compare1a
return
```

## 模数（AD）转换

模数转换器主要技术指标：

- 分辨率：可转换成数字信号的模拟信号的最小值。$= \text{最大允许模拟输入值} / 2 ^ \text{位长}$

- 精度

- 转换时间

### 常用信号调理电路

![反相放大器和同相放大器](C:\Users\ph3n9\OneDrive - HHU\doing course\microcontroller\myself\figs\反相放大器和同相放大器.png)

1. 反相放大器 $A_V = - R_f / R_i$

2. 同相放大器 $A_V = 1 + R_f / R_i$

    - 跟随器是 $R_f = 0, R_i = \infty$ 的同相放大器，$A_V = 1, V_o = V_i$

![加法器和积分器](C:\Users\ph3n9\OneDrive - HHU\doing course\microcontroller\myself\figs\加法器和积分器.png)

3. 加法器 $V_o = - R_o [V_1 / R_1 + V_2 / R_2 + V_3 / R_3]$

4. 积分器 $V_o = V_C = - q / C = - t (I / C) = - t \times V_i / (R C)$

### 模数转换工作原理

1. 并行处理

    - 速度最快、精度最低
    - 需要 $2 ^ N$ 个电阻和电压比较器
    - 随着位数增加，电阻的取值逐渐困难

2. 逐次比较

    - 精度、速度、成本适中
    - AVR 单片机实际使用的方法

3. 双积分型

### AVR 单片机内部 ADC 的主要技术性能

1. 工作原理：逐次比较

2. 10 位，分辨率 $\text{LSB} = 5 \mathrm{mV}$，精度：$\pm 2 \times \text{LSB}$

3. 转换时间 13μs ~ 260μs，采样速度可达 15kSPS

4. 输入通道：8 路单端，7 路差分（其他减去 ADC1/PA1），2 路带有可选的 10× 和 200× 增益的差分输入通道（(AD1 - AD0)×10 or ×200, (AD3 - AD2)×10 or ×200）

5. ADC 结果默认为左对齐，可以设置为左对齐（指用两个八位寄存器存放一个十位的值）

6. ADC 的电压输入范围 0 ~ Vcc，我们的电路板上 Vcc = 5V

7. 可选择内部的 2.56 V 的 ADC 参考电压源，转换后的电压 $= (2 ^ n - 1) \times V_{\text{in}} / V_{\text{ref}}$

8. 自由连续转换模式、单次转换模式、触发模式

9. ADC 转换完成中断

10. 休眠模式下的噪声抑制器：外部噪声不能将 ADC 从休眠模式下唤醒

    | REFS1 | REFS0 |                ADC 参考电源                |
    | :---: | :---: | :----------------------------------------: |
    |   0   |   0   |     外部引脚 AREF，断开内部参考源连接      |
    |   0   |   1   |    AVcc，AREF 外部并接电容 $\checkmark$    |
    |   1   |   0   |                    保留                    |
    |   1   |   1   | 内部 2.56V，AREF 外部并接电容 $\checkmark$ |

```basic
'ADC 配置
config adc = single/free, prescaler = auto/2/4/8/16/32/64/1024, reference = off/avcc/internal

'中断配置
on adc adc_isr
enable interrupts : enable adc

'启动 ADC
start ADC

'读取 ADC 转换结果
x = getadc(channel_number)    'channel_number 为 ADC 标号，0 ~ 7
```

```basic
'单次测量用 lcd 显示转换的电压
$regfile = "m16def.dat"
$crystal = 4000000

config lcd = 16 * 2
config lcdpin = pin, rs = porta.2, e = porta.3, db4 = porta.4, db5 = porta.5, db6 = porta.6, db7 = porta.7
cls

config adc = free, prescaler = auto, reference = avcc
on adc adc_isr
enable interrupts : enable adc

dim x as word, y as single, channel as byte : channel = 0
'channel 的值决定使用哪个 ADC(0 ~ 7)

do
loop

end

adc_isr:
    x = getadc(channel)
    y = x : y = y / 1023 : y = y * 4.8    '求出转换后的值
    locate 1, 1
    lcd y
return
```

1. 多路复用器选择寄存器 ADMUX：7、6 两位决定参考电压源，5 位决定结果对齐方式，4 ~ 0 位决定模拟通道和增益选择

2. 控制和状态寄存器A：ADCSRA

    - 7 ADEN：ADC 是否打开
    - 6 ADSC：ADC 是否开始
    - 5 ADATE：ADC 自动转换触发是否允许
    - 4 ADIF、3 ADIE：ADC 中断标志位、中断允许位
    - 2 ~ 0 ADPS： ADC 预分频选择（2/4/8/16/32/64/128），单片机的时钟经过预分频之后作为 ADC 专用的时钟

3. 考试内容

    - 同时在 lcd 显示屏上显示 AD0 和 AD1 的电压
    - 根据单通道的电压值触发任务，例如 0 ~ 1V 点亮所有红灯，1 ~ 2V 唱歌等等

### 模拟比较器

- $+ > -$ 时输出值 ACO = 1

- 比较器的输出可以触发一个独立的中断，也可以作为 T/C1 的捕获触发信号

- 同相端：内部 1.22V 能隙基准 / AIN0(PB2)

- 反相端：AIN1(PB3) / AD1 ~ AD7

```basic
'配置 模拟比较器
config aci = on/off, compare = on/off, trigger = toggle/rising/falling
'aci = on 打开 aci，compare = on ACO 模拟比较器输出标志位接 T/C1
on aci aci_isr
enable interrupts : enable aci
start ac

'PB2、PB3 输入且上拉电阻无效
config portb.2 = input : portb.2 = 0
config portb.3 = input : portb.3 = 0

...
end
aci_isr:
    ...
end
```

![模拟比较器](C:\Users\ph3n9\OneDrive - HHU\doing course\microcontroller\myself\figs\模拟比较器.png)

## 内部串行接口用法

- 学习 同步/异步串行接口（USART）用法 和 一总线（单总线）接口与用法

- 自学 同步串行接口 SPI 用法 和 I^2C 串行接口用法

- 串行优势：PCB 线路连接简单、节约 I/O 资源、稳定抗干扰能力强

- 并行优势：速度快

- 串行传输要点：时序

    - 位传输：硬件连接、数据格式、规范/协议（数据流、纠错、状态转换）

        - 一帧 USART：IDLE -> start -> 数据位 -> 奇偶校检位 P（偶校检、奇校检） -> 停止位（后面 IDLE 或 start）

    - USART 异步 各自的时钟信号线、UART 同步 单根时钟信号线

### USART 异步串行通讯

1. 硬件：本机发送端连对方接收端，本机接受端连对方发送端，各自时钟信号

   - 全双工：可以同时发送和接收

2. 软件：数据格式、波特率/比特率(n * 1200 bit/s)

```basic
' USART 配置
$crystal = 4096000    '时钟频率保持一致

config serialin = buffered, size = ...    '配置输入缓冲区
config serialout = buffered, size = ...    '配置输出缓冲区
' size 为缓冲区大小，最大 255 字节

config comX = baud, synchrone = 0/1, parity = none/disabled/even/odd, stopbits = 1/2, databits = 5/6/7/8/9, clockpol = 0/1
' comX, X = 1, 2, 3; 1 = ATmega16 的 USART
' baud 波特率（bit/s），可以写成： com1 = 9600 或 $baud = 9600 ... com1 = dummy
' synchrone = 0 异步（default） / 1 同步
' parity = none 无 / disable 无效（default） / even 偶校检 / odd 奇校检
' stopbits 停止位长度 1 位（default）/ 2 位 
' databits 数据位长度，default = 8
' cloclpol = 0 同相，上升沿变更数据，下降沿采样数据（default） / 1 反相

' 通讯配置
$regfile = "m15def.dat"
$crystal = 4096000
$baud = 9600    '其他 com 配置使用默认
config serialout = buffered, size = 16

' 发送语句
w = 100
print "w = "; w    '发送 string 类型数据

' 接受语句
dim b as string*20
do
    input b
loop
```

### UART 同步通讯

- 连线的时候多一根 时钟线

```basic
' UART 配置
config com1 = dummy, synchrone = 1, parity = none, stopbits = 1, databits = 8, clockpol = 0
```

```basic
' 串口通信发收

' 发送
$regfile = "m16def.dat"
$crystal = 8000000
$baud = 9600
config serialout = buffered, size = 16

config adc = single, prescaler = auto, reference = avcc
on adc adc_isr
enable interrupts : enable adc

dim a as string * 15, b as word, c as string * 9, d as string * 4
c = "adcch(0)"

do
    start adc : idle : stop adc
    d = str(b) : d = format(d, " ")
    a = c + d : print a
    waitms 500
loop

adc_isr:
    b = getadc(0)
return

' 接收
$regfile = "m16def.dat"
$crystal = 8000000
$baud = 9600
config serialin = buffered, size = 16

config lcd = 16 * 2
config lcdpin = pin, rs = porta.2, e = porta.3, db4 = porta.4, db5 = porta.5, db6 = porta.6, db7 = porta.7

dim b as string * 15

do
    input b : b = right(b, 13)    '截取 13 个字节，不够则补空格
    cls : lcd b
loop
```

### 单总线

## 考试内容

### 笔试 50%, 0.5h

1. 填空

2. T/C0 T/C1 PWM 不同占空比的方波

### 操作 50%, 1h

1. LCD 仿真与实现：字符左移右移

2. 输入 中断 流水灯：INT0 实现某效果 INT1 实现某效果

3. LED 数码管：控制字符的左移和右移

4. 步进电机 + 输入口：PB1 实现某效果 PB4 实现某效果（加速减速换方向）

5. AD 转换 + 控制，见前面提到的

6. 自由发挥：计算器 等
