HTTPServer.o: HTTPServer.c GeneralUtilities/ANSIColors.h \
 RPiBaseModules/mongoose.h GeneralUtilities/StringUtils.h \
 GeneralUtilities/MemoryManager.h HTTPServer.h WebSocketServer.h
main.o: main.c main.h HTTPServer.h GeneralUtilities/StringUtils.h \
 UserInterfaceServer.h WebSocketServer.h
UserInterfaceServer.o: UserInterfaceServer.c UserInterfaceServer.h \
 GeneralUtilities/StringUtils.h RPiBaseModules/linenoise.h \
 GeneralUtilities/ANSIColors.h
WebConnection.o: WebConnection.c WebConnection.h \
 RPiBaseModules/mongoose.h GeneralUtilities/MemoryManager.h \
 GeneralUtilities/StringUtils.h
WebSocketServer.o: WebSocketServer.c WebSocketServer.h \
 GeneralUtilities/StringUtils.h WebConnection.h RPiBaseModules/mongoose.h \
 GeneralUtilities/JSONIF.h GeneralUtilities/json.h \
 GeneralUtilities/StringUtils.h GeneralUtilities/JSONOut.h \
 GeneralUtilities/MemoryManager.h GeneralUtilities/ANSIColors.h \
 GeneralUtilities/json.h UserInterfaceServer.h
