	.file	1 "fib_loop.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	softfloat
	.module	nooddspreg
	.abicalls
	.option	pic0
	.text
	.align	2
	.globl	currentTime
	.set	nomips16
	.set	nomicromips
	.ent	currentTime
	.type	currentTime, @function
currentTime:
	.frame	$fp,48,$31		# vars= 16, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-48
	sw	$31,44($sp)
	sw	$fp,40($sp)
	move	$fp,$sp
	li	$5,1			# 0x1
	addiu	$2,$fp,24
	move	$4,$2
	jal	__timespec_get_time64
	nop

	lw	$3,28($fp)
	lw	$2,24($fp)
	li	$2,999948288			# 0x3b9a0000
	ori	$2,$2,0xca00
	mult	$3,$2
	lw	$2,36($fp)
	mflo	$3
	addu	$2,$3,$2
	move	$sp,$fp
	lw	$31,44($sp)
	lw	$fp,40($sp)
	addiu	$sp,$sp,48
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	currentTime
	.size	currentTime, .-currentTime
	.rdata
	.align	2
$LC0:
	.ascii	"%d\000"
	.align	2
$LC1:
	.ascii	"%llu \000"
	.align	2
$LC2:
	.ascii	"Total time taken(in ns) = %ld \012\000"
	.text
	.align	2
	.globl	main
	.set	nomips16
	.set	nomicromips
	.ent	main
	.type	main, @function
main:
	.frame	$fp,80,$31		# vars= 48, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-80
	sw	$31,76($sp)
	sw	$fp,72($sp)
	move	$fp,$sp
	move	$5,$0
	move	$4,$0
	sw	$5,28($fp)
	sw	$4,24($fp)
	li	$3,1			# 0x1
	move	$2,$0
	sw	$3,36($fp)
	sw	$2,32($fp)
	sw	$5,52($fp)
	sw	$4,48($fp)
	addiu	$2,$fp,64
	move	$5,$2
	lui	$2,%hi($LC0)
	addiu	$4,$2,%lo($LC0)
	jal	scanf
	nop

	jal	currentTime
	nop

	sw	$2,56($fp)
	li	$2,1			# 0x1
	sw	$2,40($fp)
	b	$L4
	nop

$L8:
	lw	$3,40($fp)
	li	$2,1			# 0x1
	bne	$3,$2,$L5
	nop

	lw	$7,28($fp)
	lw	$6,24($fp)
	lui	$2,%hi($LC1)
	addiu	$4,$2,%lo($LC1)
	jal	printf
	nop

	b	$L6
	nop

$L5:
	lw	$3,40($fp)
	li	$2,2			# 0x2
	bne	$3,$2,$L7
	nop

	lw	$7,36($fp)
	lw	$6,32($fp)
	lui	$2,%hi($LC1)
	addiu	$4,$2,%lo($LC1)
	jal	printf
	nop

	b	$L6
	nop

$L7:
	lw	$5,28($fp)
	lw	$4,24($fp)
	lw	$7,36($fp)
	lw	$6,32($fp)
	addu	$3,$5,$7
	sltu	$8,$3,$5
	addu	$2,$4,$6
	addu	$4,$8,$2
	move	$2,$4
	sw	$3,52($fp)
	sw	$2,48($fp)
	lw	$3,36($fp)
	lw	$2,32($fp)
	sw	$3,28($fp)
	sw	$2,24($fp)
	lw	$3,52($fp)
	lw	$2,48($fp)
	sw	$3,36($fp)
	sw	$2,32($fp)
	lw	$7,52($fp)
	lw	$6,48($fp)
	lui	$2,%hi($LC1)
	addiu	$4,$2,%lo($LC1)
	jal	printf
	nop

$L6:
	lw	$2,40($fp)
	nop
	addiu	$2,$2,1
	sw	$2,40($fp)
$L4:
	lw	$2,64($fp)
	lw	$3,40($fp)
	nop
	slt	$2,$2,$3
	beq	$2,$0,$L8
	nop

	jal	currentTime
	nop

	sw	$2,60($fp)
	li	$4,10			# 0xa
	jal	putchar
	nop

	lw	$3,60($fp)
	lw	$2,56($fp)
	nop
	subu	$2,$3,$2
	move	$5,$2
	lui	$2,%hi($LC2)
	addiu	$4,$2,%lo($LC2)
	jal	printf
	nop

	move	$2,$0
	move	$sp,$fp
	lw	$31,76($sp)
	lw	$fp,72($sp)
	addiu	$sp,$sp,80
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	main
	.size	main, .-main
	.ident	"GCC: (OpenWrt GCC 11.2.0 r18942-cbfce92367) 11.2.0"
	.section	.note.GNU-stack,"",@progbits
