/*
 * Copyright (c) 2014, Texas Instruments Incorporated - http://www.ti.com/
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 * 3. Neither the name of the copyright holder nor the names of its
 *    contributors may be used to endorse or promote products derived
 *    from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 * ``AS IS'' AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
 * FOR A PARTICULAR PURPOSE ARE DISCLAIMED.  IN NO EVENT SHALL THE
 * COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
 * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
 * (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
 * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
 * STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
 * ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED
 * OF THE POSSIBILITY OF SUCH DAMAGE.
 */
/*---------------------------------------------------------------------------*/
#ifndef PROJECT_CONF_H_
#define PROJECT_CONF_H_
/*---------------------------------------------------------------------------*/
/* Change to match your configuration */
#define IEEE802154_CONF_PANID            0xABCD
#define RF_CORE_CONF_CHANNEL                 26
#define RF_BLE_CONF_ENABLED                   0
/*---------------------------------------------------------------------------*/

/* Enable TCP */
#define UIP_CONF_TCP 1

/*---------------------------------------------------------------------------*/

#define SICSLOWPAN_CONF_FRAG 1

/* Enable ND RS messages */
#define UIP_CONF_ROUTER 0

/* Enable dynamic capability selection on send */
#ifndef SICSLOWPAN_CONF_CHECK_CAP
#define SICSLOWPAN_CONF_CHECK_CAP 1
#endif /* SICSLOWPAN_CONF_CHECK_CAP */

// To set the capability level here instead of
// via the environment variable that is pulled into the Makefile
#ifndef CAPABILITY_LEVEL
#define CAPABILITY_LEVEL 3
#endif /* Capability Level Defined */

//tmp -- delete me
#define UIP_CONF_IPV6_QUEUE_PKT 1

#ifndef SICSLOWPAN_CONF_ICMP_ERRORS
#define SICSLOWPAN_CONF_ICMP_ERRORS 1 // Turns on ICMP errors in response un-decodable 6lowpan messages
#endif /* SICSLOWPAN_CONF_ICMP_ERRORS */

#ifndef UIP_CONF_6CIO
#define UIP_CONF_6CIO 1 // Router solicitation messages will now indicate capability level
#endif /* UIP_CONF_6CIO */

/* Capability Spectrum */
#if CAPABILITY_LEVEL == 0
/* Disable IPHC compression */
#define SICSLOWPAN_CONF_COMPRESSION SICSLOWPAN_COMPRESSION_IPV6

#elif CAPABILITY_LEVEL == 1
#define SICSLOWPAN_CONF_COMPRESSION SICSLOWPAN_COMPRESSION_IPHC
#define SICSLOWPAN_CONF_COMPRESS_EXT_HDR 0
#define SICSLOWPAN_CONF_COMPRESS_UDP 0
#define SICSLOWPAN_CONF_COMP_TC_FL_HL 0
#define SICSLOWPAN_CONF_STATEFUL_COMP 0

#elif CAPABILITY_LEVEL == 2
#define SICSLOWPAN_CONF_COMPRESSION SICSLOWPAN_COMPRESSION_IPHC
#define SICSLOWPAN_CONF_COMPRESS_EXT_HDR 0
#define SICSLOWPAN_CONF_COMPRESS_UDP 0
#define SICSLOWPAN_CONF_COMP_TC_FL_HL 0
#define SICSLOWPAN_CONF_STATEFUL_COMP 1


#elif CAPABILITY_LEVEL == 3

#define SICSLOWPAN_CONF_COMPRESSION SICSLOWPAN_COMPRESSION_IPHC
#define SICSLOWPAN_CONF_COMPRESS_EXT_HDR 0
#define SICSLOWPAN_CONF_COMPRESS_UDP 0
#define SICSLOWPAN_CONF_COMP_TC_FL_HL 1
#define SICSLOWPAN_CONF_STATEFUL_COMP 1

#elif CAPABILITY_LEVEL == 4

#define SICSLOWPAN_CONF_COMPRESSION SICSLOWPAN_COMPRESSION_IPHC
#define SICSLOWPAN_CONF_COMPRESS_EXT_HDR 0
#define SICSLOWPAN_CONF_COMPRESS_UDP 1
#define SICSLOWPAN_CONF_COMP_TC_FL_HL 1
#define SICSLOWPAN_CONF_STATEFUL_COMP 1

#elif CAPABILITY_LEVEL == 5
// Notably, Contiki does not support the mesh or broadcast header anyway
#define SICSLOWPAN_CONF_COMPRESSION SICSLOWPAN_COMPRESSION_IPHC
//#define IPHC_EXTENSION_COMPRESSION 1
#define SICSLOWPAN_CONF_COMPRESS_EXT_HDR 1
#define SICSLOWPAN_CONF_COMPRESS_UDP 1
#define SICSLOWPAN_CONF_COMP_TC_FL_HL 1
#define SICSLOWPAN_CONF_STATEFUL_COMP 1

#endif /* Capability Spectrum */

/*---------------------------------------------------------------------------*/
/* Enable Logging */
#define LOG_CONF_LEVEL_TCPIP 1
#define LOG_CONF_LEVL_6LOWPAN 1
#define LOG_CONF_LEVEL_IPV6 1
#define LOG_CONF_LEVEL_COAP 1
#define LOG_CONF_LEVEL_RPL 1
#define LOG_CONF_LEVEL_MAC 1
#define LOG_CONF_LEVEL_FRAMER 1

#define UIP_CONF_ND6_SEND_NS                  1
#define SICSLOWPAN_CONF_MAX_ADDR_CONTEXTS     3


/* Enable/Disable Components of this Demo */
#define CC26XX_WEB_DEMO_CONF_MQTT_CLIENT      1
#define CC26XX_WEB_DEMO_CONF_6LBR_CLIENT      ROUTING_CONF_RPL_CLASSIC
#define CC26XX_WEB_DEMO_CONF_COAP_SERVER      1
#define CC26XX_WEB_DEMO_CONF_NET_UART         1

/*
 * ADC sensor functionality. To test this, an external voltage source should be
 * connected to DIO23
 * Enable/Disable DIO23 ADC reading by setting CC26XX_WEB_DEMO_CONF_ADC_DEMO
 */
#define CC26XX_WEB_DEMO_CONF_ADC_DEMO         0
/*---------------------------------------------------------------------------*/
/* Enable the ROM bootloader */
#define ROM_BOOTLOADER_ENABLE                 1
/*---------------------------------------------------------------------------*/
/*
 * Shrink the size of the uIP buffer, routing table and ND cache.
 * Set the TCP MSS
 */
#define UIP_CONF_BUFFER_SIZE                500
#define NETSTACK_MAX_ROUTE_ENTRIES            5
#define NBR_TABLE_CONF_MAX_NEIGHBORS          5
#define UIP_CONF_TCP_MSS                    128
/*---------------------------------------------------------------------------*/
#endif /* PROJECT_CONF_H_ */
/*---------------------------------------------------------------------------*/
