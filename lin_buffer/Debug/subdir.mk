################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../main_checkpoint.c 

ASM_SRCS += \
../linearbuff.asm 

CMD_SRCS += \
../lnkx.cmd 

OBJS += \
./linearbuff.obj \
./main_checkpoint.obj 

C_DEPS += \
./main_checkpoint.pp 

OBJS__QTD += \
".\linearbuff.obj" \
".\main_checkpoint.obj" 

C_DEPS__QTD += \
".\main_checkpoint.pp" 

ASM_SRCS_QUOTED += \
"../linearbuff.asm" 

C_SRCS_QUOTED += \
"../main_checkpoint.c" 


# Each subdirectory must supply rules for building sources it contributes
linearbuff.obj: ../linearbuff.asm $(GEN_OPTS)
	@echo 'Building file: $<'
	@echo 'Invoking: Compiler'
	"C:/Program Files (x86)/Texas Instruments/ccsv4/tools/compiler/c5500/bin/cl55" -v5515 -g --include_path="C:/Program Files (x86)/Texas Instruments/ccsv4/tools/compiler/c5500/include" --include_path="C:/Program Files (x86)/Texas Instruments/ccsv4/emulation/boards/usbstk5515_v1/include" --diag_warning=225 --ptrdiff_size=32 --memory_model=large $(GEN_OPTS_QUOTED) $(subst #,$(wildcard $(subst $(SPACE),\$(SPACE),$<)),"#")
	@echo 'Finished building: $<'
	@echo ' '

main_checkpoint.obj: ../main_checkpoint.c $(GEN_OPTS)
	@echo 'Building file: $<'
	@echo 'Invoking: Compiler'
	"C:/Program Files (x86)/Texas Instruments/ccsv4/tools/compiler/c5500/bin/cl55" -v5515 -g --include_path="C:/Program Files (x86)/Texas Instruments/ccsv4/tools/compiler/c5500/include" --include_path="C:/Program Files (x86)/Texas Instruments/ccsv4/emulation/boards/usbstk5515_v1/include" --diag_warning=225 --ptrdiff_size=32 --memory_model=large --preproc_with_compile --preproc_dependency="main_checkpoint.pp" $(GEN_OPTS_QUOTED) $(subst #,$(wildcard $(subst $(SPACE),\$(SPACE),$<)),"#")
	@echo 'Finished building: $<'
	@echo ' '


