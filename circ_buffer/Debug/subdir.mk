################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../main_circbuff.c 

ASM_SRCS += \
../asmcircbuff.asm \
../circbuffconfig.asm 

CMD_SRCS += \
../lnkx.cmd 

ASM_DEPS += \
./asmcircbuff.pp \
./circbuffconfig.pp 

OBJS += \
./asmcircbuff.obj \
./circbuffconfig.obj \
./main_circbuff.obj 

C_DEPS += \
./main_circbuff.pp 

OBJS__QTD += \
".\asmcircbuff.obj" \
".\circbuffconfig.obj" \
".\main_circbuff.obj" 

ASM_DEPS__QTD += \
".\asmcircbuff.pp" \
".\circbuffconfig.pp" 

C_DEPS__QTD += \
".\main_circbuff.pp" 

ASM_SRCS_QUOTED += \
"../asmcircbuff.asm" \
"../circbuffconfig.asm" 

C_SRCS_QUOTED += \
"../main_circbuff.c" 


# Each subdirectory must supply rules for building sources it contributes
asmcircbuff.obj: ../asmcircbuff.asm $(GEN_OPTS)
	@echo 'Building file: $<'
	@echo 'Invoking: Compiler'
	"C:/Program Files (x86)/Texas Instruments/ccsv4/tools/compiler/c5500/bin/cl55" -v5515 -g --include_path="C:/Program Files (x86)/Texas Instruments/ccsv4/tools/compiler/c5500/include" --include_path="C:/Program Files (x86)/Texas Instruments/ccsv4/emulation/boards/usbstk5515_v1/include" --diag_warning=225 --ptrdiff_size=32 --memory_model=large --preproc_with_compile --preproc_dependency="asmcircbuff.pp" $(GEN_OPTS_QUOTED) $(subst #,$(wildcard $(subst $(SPACE),\$(SPACE),$<)),"#")
	@echo 'Finished building: $<'
	@echo ' '

circbuffconfig.obj: ../circbuffconfig.asm $(GEN_OPTS)
	@echo 'Building file: $<'
	@echo 'Invoking: Compiler'
	"C:/Program Files (x86)/Texas Instruments/ccsv4/tools/compiler/c5500/bin/cl55" -v5515 -g --include_path="C:/Program Files (x86)/Texas Instruments/ccsv4/tools/compiler/c5500/include" --include_path="C:/Program Files (x86)/Texas Instruments/ccsv4/emulation/boards/usbstk5515_v1/include" --diag_warning=225 --ptrdiff_size=32 --memory_model=large --preproc_with_compile --preproc_dependency="circbuffconfig.pp" $(GEN_OPTS_QUOTED) $(subst #,$(wildcard $(subst $(SPACE),\$(SPACE),$<)),"#")
	@echo 'Finished building: $<'
	@echo ' '

main_circbuff.obj: ../main_circbuff.c $(GEN_OPTS)
	@echo 'Building file: $<'
	@echo 'Invoking: Compiler'
	"C:/Program Files (x86)/Texas Instruments/ccsv4/tools/compiler/c5500/bin/cl55" -v5515 -g --include_path="C:/Program Files (x86)/Texas Instruments/ccsv4/tools/compiler/c5500/include" --include_path="C:/Program Files (x86)/Texas Instruments/ccsv4/emulation/boards/usbstk5515_v1/include" --diag_warning=225 --ptrdiff_size=32 --memory_model=large --preproc_with_compile --preproc_dependency="main_circbuff.pp" $(GEN_OPTS_QUOTED) $(subst #,$(wildcard $(subst $(SPACE),\$(SPACE),$<)),"#")
	@echo 'Finished building: $<'
	@echo ' '


