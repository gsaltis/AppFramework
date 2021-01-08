CC				       = gcc
LINK				       = gcc
CC_OPTS				       = -c -g -Wall
CC_INCS				       = 
LINK_OPTS			       = -g -LGeneralUtilities -LRPiBaseModules
LINK_LIBS			       = -lutils -ljson -llinenoise -lmongoose -lpthread -lm

TARGET				       = appframework
OBJS				       = $(sort					\
					   main.o				\
					   HTTPServer.o				\
					   UserInterfaceServer.o		\
					   WebSocketServer.o			\
					   WebConnection.o			\
					   JSONIF.o				\
					   JSONOut.o				\
					  )
LIBS				       = 
%.o				      : %.c

					 @echo [CC] $<
					 @$(CC) $(CC_OPTS) $(CC_INCS) $<

.PHONY				       : $(TARGET)
$(TARGET)			       : $(OBJS)
					 @echo [LD] $(TARGET)
					 @$(LINK) $(LINK_OPTS) -o $(TARGET) $(OBJS) $(LINK_LIBS) $(LIBS)

include					 depends.mk

.PHONY				       : junkclean
junkclean			       :
					 rm -rf $(wildcard *~ *-bak www/*~)

.PHONY				       : clean
clean				       : junkclean
					 rm -rf $(wildcard $(OBJS) $(TARGET))