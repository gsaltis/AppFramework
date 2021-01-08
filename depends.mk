HTTPServer.o: HTTPServer.c GeneralUtilities/ANSIColors.h \
 RPiBaseModules/mongoose.h GeneralUtilities/String.h \
 GeneralUtilities/MemoryManager.h HTTPServer.h WebSocketServer.h
JSONIF.o: JSONIF.c RPiBaseModules/json.h GeneralUtilities/String.h \
 GeneralUtilities/MemoryManager.h JSONIF.h
main.o: main.c main.h HTTPServer.h GeneralUtilities/String.h \
 UserInterfaceServer.h
UserInterfaceServer.o: UserInterfaceServer.c UserInterfaceServer.h \
 GeneralUtilities/String.h RPiBaseModules/linenoise.h \
 GeneralUtilities/ANSIColors.h
WebConnection.o: WebConnection.c WebConnection.h \
 RPiBaseModules/mongoose.h GeneralUtilities/MemoryManager.h \
 GeneralUtilities/String.h
WebSocketServer.o: WebSocketServer.c WebSocketServer.h \
 GeneralUtilities/String.h WebConnection.h RPiBaseModules/mongoose.h \
 JSONIF.h RPiBaseModules/json.h GeneralUtilities/MemoryManager.h \
 GeneralUtilities/ANSIColors.h UserInterfaceServer.h
