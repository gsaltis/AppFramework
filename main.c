/*****************************************************************************
 * FILE NAME    : main.c
 * DATE         : January 7 2021
 * PROJECT      : NONE
 * COPYRIGHT    : Copyright (C) 2021 by Gregory R Saltis
 *****************************************************************************/

/*****************************************************************************!
 * Global Headers
 *****************************************************************************/
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdbool.h>
#include <stdint.h>
#include <pthread.h>

/*****************************************************************************!
 * Local Headers
 *****************************************************************************/
#include "main.h"
#include "HTTPServer.h"
#include "UserInterfaceServer.h"
#include "WebSocketServer.h"

/*****************************************************************************!
 * Local Macros
 *****************************************************************************/

/*****************************************************************************!
 * Local Data
 *****************************************************************************/

/*****************************************************************************!
 * Local Functions
 *****************************************************************************/
static void
MainInitialize
();

/*****************************************************************************!
 * Function : main
 *****************************************************************************/
int
main
(int argc, char** argv)
{
  MainInitialize();
  HTTPServerStart();
  pthread_join(HTTPServerGetThreadID(), NULL);
  pthread_join(UserInterfaceServerGetThreadID(), NULL);
  return EXIT_SUCCESS;
}


/*****************************************************************************!
 * Function : MainInitialize
 *****************************************************************************/
void
MainInitialize
()
{
  WebSocketServerInitialize();
  HTTPServerInitialize();
  UserInterfaceServerInitialize();
}
