@
@ Assembler program to flash three LEDs connected to the
@ Raspberry Pi Pico GPIO port using the Pico SDK.
@

	.EQU    SEG_A, 0
	.EQU    SEG_B, 1
	.EQU    SEG_C, 2
	.EQU    SEG_D, 3
	.EQU    SEG_E, 4
	.EQU    SEG_F, 5
	.EQU    SEG_G, 6
	.EQU	GPIO_OUT, 1
	.EQU	sleep_time, 1000

.thumb_func	@ Necessary because sdk uses BLX
.global main    @ Provide program starting address

main:
    MOV R0, #SEG_A
    BL gpio_init
    MOV R0, #SEG_A
    MOV R1, #GPIO_OUT
    BL link_gpio_set_dir

    MOV R0, #SEG_B
    BL gpio_init
    MOV R0, #SEG_B
    MOV R1, #GPIO_OUT
    BL link_gpio_set_dir

    MOV R0, #SEG_C
    BL gpio_init
    MOV R0, #SEG_C
    MOV R1, #GPIO_OUT
    BL link_gpio_set_dir

    MOV R0, #SEG_D
    BL gpio_init
    MOV R0, #SEG_D
    MOV R1, #GPIO_OUT
    BL link_gpio_set_dir

    MOV R0, #SEG_E
    BL gpio_init
    MOV R0, #SEG_E
    MOV R1, #GPIO_OUT
    BL link_gpio_set_dir

    MOV R0, #SEG_F
    BL gpio_init
    MOV R0, #SEG_F
    MOV R1, #GPIO_OUT
    BL link_gpio_set_dir

    MOV R0, #SEG_G
    BL gpio_init
    MOV R0, #SEG_G
    MOV R1, #GPIO_OUT
    BL link_gpio_set_dir
loop:
    MOV R0, #63      @ 0
    BL link_gpio_put_all
    LDR R0, =sleep_time
    BL sleep_ms

    MOV R0, #6      @ 1
    BL link_gpio_put_all
    LDR R0, =sleep_time
    BL sleep_ms

    MOV R0, #91      @ 2
    BL link_gpio_put_all
    LDR R0, =sleep_time
    BL sleep_ms

    MOV R0, #79      @ 3
    BL link_gpio_put_all
    LDR R0, =sleep_time
    BL sleep_ms

    MOV R0, #102      @ 4
    BL link_gpio_put_all
    LDR R0, =sleep_time
    BL sleep_ms

    MOV R0, #109      @ 5
    BL link_gpio_put_all
    LDR R0, =sleep_time
    BL sleep_ms

    MOV R0, #125      @ 6
    BL link_gpio_put_all
    LDR R0, =sleep_time
    BL sleep_ms

    MOV R0, #7      @ 7
    BL link_gpio_put_all
    LDR R0, =sleep_time
    BL sleep_ms

    MOV R0, #127      @ 8
    BL link_gpio_put_all
    LDR R0, =sleep_time
    BL sleep_ms

    MOV R0, #111      @ 9
    BL link_gpio_put_all
    LDR R0, =sleep_time
    BL sleep_ms

    MOV R0, #127      @ 8
    BL link_gpio_put_all
    LDR R0, =sleep_time
    BL sleep_ms

    MOV R0, #7      @ 7
    BL link_gpio_put_all
    LDR R0, =sleep_time
    BL sleep_ms

    MOV R0, #125      @ 6
    BL link_gpio_put_all
    LDR R0, =sleep_time
    BL sleep_ms

    MOV R0, #109      @ 5
    BL link_gpio_put_all
    LDR R0, =sleep_time
    BL sleep_ms

    MOV R0, #102      @ 4
    BL link_gpio_put_all
    LDR R0, =sleep_time
    BL sleep_ms

    MOV R0, #79      @ 3
    BL link_gpio_put_all
    LDR R0, =sleep_time
    BL sleep_ms

    MOV R0, #91      @ 2
    BL link_gpio_put_all
    LDR R0, =sleep_time
    BL sleep_ms

    MOV R0, #6      @ 1
    BL link_gpio_put_all
    LDR R0, =sleep_time
    BL sleep_ms

    B loop
   