/**
 * @file bbskapi.h
 *
 * This file contains the external API for the iQue Player's Secure Kernel Calls.
 *
 * Applications require permission to call particular Secure Kernel Calls, defined in the associated Ticket.
 * Most are not callable by games.
 */
#ifndef BB_SKAPI_H
#define BB_SKAPI_H

#include "ultratypes.h"

#define SKC_OK                     0
#define SKC_RECRYPT_INVALID        1
#define SKC_RECRYPT_2              2 // Complete?
#define SKC_RECRYPT_3              3 // Partial?
#define SKC_RECRYPT_4              4 // Beginning?
#define SKC_INVALID_ARGS          -1
#define SKC_INVALID_TSRL          -2
#define SKC_INVALID_CARL          -3
#define SKC_INVALID_CPRL          -4
#define SKC_INVALID_CERT          -9
#define SKC_NO_PERMISSION        -11

typedef struct BbAppLaunchCrls BbAppLaunchCrls;
typedef struct BbCertBase BbCertBase;
typedef struct BbEccSig BbEccSig;
typedef struct BbRecryptList BbRecryptList;
typedef struct BbShaHash BbShaHash;
typedef struct BbTicketBundle BbTicketBundle;

/**
 * Retrieves the console's unique BBID.
 *
 * @param bbId Location to write the BBID to. Must be a pointer to cached DRAM with 4-byte alignment.
 * @return
 *      SKC_NO_PERMISSION If called with insufficient permission.
 *      SKC_INVALID_ARGS  If the supplied pointer is not valid.
 *      SKC_OK            Otherwise.
 */
s32 skGetId(u32* bbId);

/**
 * Prepares to launch an application.
 * The provided ticket bundle is verified and made the active ticket bundle.
 * The AES decryption hardware is prepared.
 *
 * @param bundle Ticket Bundle associated with this application.
 * @param crls Application Certificate Revocation Lists to check when verifying the ticket bundle.
 *             The ticket bundle must be signed by the Root signature without going through any
 *             revoked certificates.
 * @param recryptList System Recrypt List (encrypted and digitally signed)
 * @return
 *      SKC_INVALID_ARGS  If any inputs are or contain invalid pointers,
 *                          or the ticket is not for this console,
 *                          or the ticket is for a trial that has expired.
 *      SKC_INVALID_TSRL  If the provided TSRL revocation list is invalid.
 *      SKC_INVALID_CARL  If the provided CARL revocation list is invalid.
 *      SKC_INVALID_CPRL  If the provided CPRL revocation list is invalid.
 *      SKC_INVALID_CERT  If a digital certificate was revoked by one of the revocation lists.
 *      SKC_RECRYPT_3     If the recrypt state for this app is not in an acceptable state to be launched.
 *      SKC_RECRYPT_4     If the recrypt state for this app is not in an acceptable state to be launched.
 *      SKC_NO_PERMISSION If called with insufficient permission.
 *      SKC_OK            Otherwise.
 */
s32 skLaunchSetup(BbTicketBundle* bundle, BbAppLaunchCrls* crls, BbRecryptList* recryptList);

/**
 * Launches a prepared application that is assumed to have been loaded into memory at the entrypoint between calling
 * skLaunchSetup and calling this. skLaunchSetup must have been called prior to set the active ticket bundle.
 *
 * @param entrypoint The entrypoint address of the app to launch.
 *
 * @return
 *      SKC_INVALID_ARGS  If the entrypoint is an invalid pointer,
 *                          or if content failed a hash check for non-recrypted apps,
 *                          or if the content is an expired trial.
 *      SKC_NO_PERMISSION If called with insufficient permission.
 * @note Does not return if the call is successful.
 */
s32 skLaunch(void* entrypoint);

/**
 * Verifies whether a provided Recrypt List is valid.
 *
 * @param recryptList Pointer to the (encrypted and digitally signed) recrypt list to verify.
 * @return
 *      SKC_OK            If the recrypt list is valid
 *      SKC_INVALID_ARGS  If the recrypt list is invalid
 *                          (e.g. contains invalid pointers or its ECDSA signature fails to verify)
 *      SKC_NO_PERMISSION If called with insufficient permission.
 */
s32 skRecryptListValid(BbRecryptList* recryptList);

/**
 * Begins a new recryption task. Content downloaded is initially encrypted with the Common Key but may be re-encrypted
 * with a new randomly generated AES key if the recrypt flag is set in the content metadata. Like with skLaunchSetup,
 * the provided ticket bundle is first verified before being made the active ticket bundle.
 *
 * @param bundle The ticket bundle associated with the content that will be recrypted.
 * @param crls Application Certificate Revocation Lists to check when verifying the ticket bundle.
 *             The ticket bundle must be signed by the Root signature without going through any
 *             revoked certificates.
 * @param recryptList The recrypt list that the AES key will be saved to, after being encrypted with the
 *                    console-specific recrypt list key.
 * @return
 *      SKC_RECRYPT_INVALID If called on a ticket bundle that does not have the recrypt flag set.
 *      SKC_INVALID_ARGS    If any inputs are or contain invalid pointers,
 *                            or the ticket is not for this console,
 *                            or the ticket is for a trial that has expired.
 *      SKC_INVALID_TSRL    If the provided TSRL revocation list is invalid.
 *      SKC_INVALID_CARL    If the provided CARL revocation list is invalid.
 *      SKC_INVALID_CPRL    If the provided CPRL revocation list is invalid.
 *      SKC_INVALID_CERT    If a digital certificate was revoked by one of the revocation lists.
 *      SKC_NO_PERMISSION   If called with insufficient permission.
 *      Otherwise, one of SKC_RECRYPT_* will be returned communicating the initial state of the recryption process.
 */
s32 skRecryptBegin(BbTicketBundle* bundle, BbAppLaunchCrls* crls, BbRecryptList* recryptList);

/**
 * Recrypts the provided data, using the previously set context.
 * Must be called following skRecryptBegin.
 *
 * @param buf Pointer to app content to encrypt and hash.
 * @param size Amount of data to process in this buffer.
 * @return
 *      SKC_INVALID_ARGS  If the provided buffer is not fully contained in RAM or is otherwise invalid.
 *      SKC_NO_PERMISSION If called with insufficient permission.
 *      SKC_OK            Otherwise.
 */
s32 skRecryptData(u8* buf, u32 size);

/**
 * Resumes a partially-complete recryption. The last chunk of successfully-recrypted data must be provided in order to
 * set the AES-128-CBC Initialization Vector to continue recryption of the next chunk.
 * Must be called following skRecryptBegin.
 *
 * @param buf Pointer to last chunk of successfully-recrypted content.
 * @param size Amount of data available.
 * @return
 *      SKC_INVALID_ARGS  If the provided buffer is not fully contained in RAM or is otherwise invalid.
 *      SKC_NO_PERMISSION If called with insufficient permission.
 *      SKC_OK            Otherwise.
 */
s32 skRecryptComputeState(u8* buf, u32 size);

/**
 * Concludes the recryption process. The SHA-1 hash of the content, computed during recryption, is checked against the
 * hash in the active ticket bundle; if it passes, the recrypt list entry for the active content is updated to indicate
 * that recryption is complete and was successful.
 *
 * @param recryptList The (encrypted and digitally signed) recrypt list to update.
 * @return
 *      SKC_OK            If recryption succeeded.
 *      SKC_INVALID_ARGS  If recryption failed (e.g. if the hash of the content did not match the hash in the ticket bundle)
 *                          or if the provided recrypt list is invalid or cannot find the entry for the content.
 *      SKC_NO_PERMISSION If called with insufficient permission.
 */
s32 skRecryptEnd(BbRecryptList* recryptList);

/**
 * Generates a digital signature for the provided SHA-1 hash (treated as a message) using the Elliptic Curve Digital
 * Signature Algorithm (ECDSA) on the curve sect233r1 with the console's ECDSA Private Key. Appends an identity of 1 to
 * the end of the message prior to signing.
 *
 * @param hash The SHA-1 hash to sign.
 * @param outSignature The resulting ECDSA digital signature.
 * @return
 *      SKC_INVALID_ARGS  If either of the arguments is an invalid pointer.
 *      SKC_NO_PERMISSION If called with insufficient permission.
 *      SKC_OK            Otherwise.
 */
s32 skSignHash(BbShaHash* hash, BbEccSig* outSignature);

/**
 * Verifies a SHA-1 hash (treated as a message) against a digital signature using either the Elliptic Curve Digital
 * Signature Algorithm (ECDSA) or the RSA Digital Signature Algorithm. For RSA, either 2048-bit or 4096-bit signatures
 * can be recognized.
 *
 * For verifying self-signed (e.g. via skSignHash) ECDSA signatures the certificate chain and revocation lists are not
 * required and may be passed as NULL, the public key is the console's own ECDSA public key. For verifying other types
 * of signatures, a valid certificate chain and certificate revocation lists must be provided, in which case the
 * signature must be signed by the Root certificate without going through any revoked certificates.
 *
 * This can only verify hashes signed with an identity of 1, such as those signed via skSignHash.
 *
 * @param hash The SHA-1 hash to check the signature of.
 * @param signature The signature to compare against. May be an ECDSA, RSA2048 or RSA4096 signature.
 * @param certChain Certificate Chain, NULL-terminated list of certificate pointers.
 *                  Not required for self-signed ECDSA signatures and must be NULL in that case.
 *                  Should not be more than 5 certificates long.
 *                  Should end on the Root signature.
 * @param crls Certificate Revocation Lists to check certificates against. Not required for self-signed ECDSA signatures.
 * @return
 *      SKC_OK            If the hash was successfully verified against the signature.
 *      SKC_INVALID_ARGS  If any arguments are invalid pointers,
 *                          or the hash could not be verified against the digital signature,
 *                          or the certificate chain was invalid,
 *                          or if any certificate revocation lists were invalid.
 *      SKC_INVALID_CERT  If a digital certificate was revoked by one of the revocation lists.
 *      SKC_NO_PERMISSION If called with insufficient permission.
 */
s32 skVerifyHash(BbShaHash* hash, u32* signature, BbCertBase** certChain, BbAppLaunchCrls* crls);

/**
 * Retrieves the consumption counters for all currently-tracked applications and the Ticket ID (TID) Window.
 *
 * The TID Window determines the TID for the first counter (cc[0]), the other counters (cc[i]) are associated with
 * tidWindow + i.
 *
 * The consumption counters track either the number of minutes that a trial app has been played for, or the number of
 * times a trial app has been launched.
 *
 * @param tidWindow The location to save the TID window to.
 * @param cc        An array of 26 u16s to save the consumption counters into.
 * @return
 *      SKC_INVALID_ARGS  If either pointer is invalid or there is not enough room to save all the consumption counters.
 *      SKC_NO_PERMISSION If called with insufficient permission.
 *      SKC_OK            Otherwise.
 */
s32 skGetConsumption(u16* tidWindow, u16 cc[26]);

/**
 * Increments the Ticket ID Window by 1 and moves all consumption counters down by 1 slot to match the new window. The
 * counter previously at position 0 is forgotten.
 *
 * @return
 *      SKC_NO_PERMISSION If called with insufficient permission.
 *      SKC_INVALID_ARGS  If the resulting state could not be saved internally.
 *      SKC_OK            If success.
 */
s32 skAdvanceTicketWindow(void);

/**
 * Overrides the trial limit and trial type stored in the currently loaded ticket.
 *
 * @param limit The new trial limit. Either a length of time or the number of allowed launches, depending on trial type.
 * @param code The new trial type
 *              0 = Time-limited in minutes, call skKeepAlive periodically
 *              1 = Limited by number of launches
 *              2 = Time-limited in minutes, no need to call skKeepAlive (TOVERIFY)
 * @return
 *      SKC_OK            If success.
 *      SKC_INVALID_ARGS  If no ticket is currently loaded.
 *      SKC_NO_PERMISSION If called with insufficient permission.
 */
s32 skSetLimit(u16 limit, u16 code);

/**
 * Returns to the system menu.
 *
 * @return
 *      SKC_NO_PERMISSION If called with insufficient permission.
 * @note Does not return if called with permission.
 */
s32 skExit(void);

/**
 * Keeps trial applications alive.
 *
 * The hardware trial timer does not have a very long period so must be refreshed periodically by calling this function.
 * This function updates the timer and checks for an expiry.
 *
 * @return
 *      SKC_NO_PERMISSION If called with insufficient permission.
 *      SKC_OK            Otherwise.
 * @note This function may not return if it detects the trial has expired.
 */
s32 skKeepAlive(void);

#endif
