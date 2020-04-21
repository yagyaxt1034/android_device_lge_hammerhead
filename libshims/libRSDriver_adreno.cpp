/*
 * Copyright (C) 2019-2020 The LineageOS Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#include <stdint.h>
#include <hardware/gralloc.h>



//class Rect;
class Rect;

/*
 * status_t GraphicBufferMapper::lock(buffer_handle_t handle,
 *                                    uint32_t usage,
 *                                    const Rect& bounds,
 *                                    void** vaddr,
 *                                    int32_t* outBytesPerPixel = nullptr,
 *                                    int32_t* outBytesPerStride = nullptr);
 */
extern "C" int _ZN7android19GraphicBufferMapper4lockEPK13native_handlejRKNS_4RectEPPvPiS9_(
        buffer_handle_t handle, uint32_t usage, const Rect& bounds, void** vaddr, int32_t* outBytesPerPixel = nullptr, int32_t* outBytesPerStride = nullptr);

/*
 * status_t GraphicBufferMapper::lock(buffer_handle_t handle,
 *                                    uint32_t usage,
 *                                    const Rect& bounds,
 *                                    void** vaddr)
 */
extern "C" int _ZN7android19GraphicBufferMapper4lockEPK13native_handlejRKNS_4RectEPPv(
        buffer_handle_t handle, uint32_t usage, const Rect& bounds, void** vaddr) {
    return _ZN7android19GraphicBufferMapper4lockEPK13native_handlejRKNS_4RectEPPvPiS9_(handle, usage, bounds, vaddr, nullptr, nullptr);
}



//class Context;
typedef void Context;

//class RsdCpuReference;
typedef void RsdCpuReference;

//typedef const CpuSymbol * (*sym_lookup_t)(Context *, const char *name);
typedef const void * (*sym_lookup_t)(void *, const char *);

//typedef CpuScript * (*script_lookup_t)(Context *, const Script *s);
typedef void * (*script_lookup_t)(void *, const void *);

//typedef const char * (*RSSelectRTCallback) (const char *, size_t);
typedef const char * (*RSSelectRTCallback) (const char *, size_t);

//typedef llvm::Module * (*RSLinkRuntimeCallback)(bcc::RSScript *, llvm::Module *, llvm::Module *);
typedef void * (*RSLinkRuntimeCallback)(void *, void *, void *);

/*
 * static RsdCpuReference * create(Context *c,
 *                                 uint32_t version_major,
 *                                 uint32_t version_minor,
 *                                 sym_lookup_t lfn,
 *                                 script_lookup_t slfn,
 *                                 RSSelectRTCallback pSelectRTCallback = nullptr,
 *                                 const char *pBccPluginName = nullptrc);
 */
extern "C" RsdCpuReference * _ZN7android12renderscript15RsdCpuReference6createEPNS0_7ContextEjjPFPKNS1_9CpuSymbolES3_PKcEPFPNS1_9CpuScriptES3_PKNS0_6ScriptEEPFS8_S8_jES8_(
        Context *c, uint32_t version_major, uint32_t version_minor, sym_lookup_t lfn, script_lookup_t slfn, RSSelectRTCallback pSelectRTCallback = nullptr, const char *pBccPluginName = nullptr);

/*
 * static RsdCpuReference * create(Context *c,
 *                                 uint32_t version_major,
 *                                 uint32_t version_minor,
 *                                 sym_lookup_t lfn,
 *                                 script_lookup_t slfn,
 *                                 bcc::RSLinkRuntimeCallback pLinkRuntimeCallback = nullptr,
 *                                 RSSelectRTCallback pSelectRTCallback = nullptr,
 *                                 const char *pBccPluginName = nullptrc);
 */
extern "C" RsdCpuReference * _ZN7android12renderscript15RsdCpuReference6createEPNS0_7ContextEjjPFPKNS1_9CpuSymbolES3_PKcEPFPNS1_9CpuScriptES3_PKNS0_6ScriptEEPFPN4llvm6ModuleEPN3bcc8RSScriptESK_SK_EPFS8_S8_jES8_(
        Context *c, uint32_t version_major, uint32_t version_minor, sym_lookup_t lfn, script_lookup_t slfn, void *pLinkRuntimeCallback = nullptr, RSSelectRTCallback pSelectRTCallback = nullptr, const char *pBccPluginName = nullptr) {
    return _ZN7android12renderscript15RsdCpuReference6createEPNS0_7ContextEjjPFPKNS1_9CpuSymbolES3_PKcEPFPNS1_9CpuScriptES3_PKNS0_6ScriptEEPFS8_S8_jES8_(c, version_major, version_minor, lfn, slfn, pSelectRTCallback, pBccPluginName);
}



//class Script;
typedef void Script;

//class Allocation;
typedef void Allocation;

//struct RsScriptCall;
typedef void RsScriptCall;

/*
 * void rsrForEach(Context *c,
 *                 Script *target,
 *                 uint32_t slot,
 *                 uint32_t numInputs,
 *                 Allocation **in,
 *                 Allocation *out,
 *                 const void *usr,
 *                 uint32_t usrBytes,
 *                 const RsScriptCall *call);
 */
extern "C" void _ZN7android12renderscript10rsrForEachEPNS0_7ContextEPNS0_6ScriptEjjPPNS0_10AllocationES6_PKvjPK12RsScriptCall(
        Context *c, Script *target, uint32_t slot, uint32_t numInputs, Allocation **in, Allocation *out, const void *usr, uint32_t usrBytes, const RsScriptCall *call);

/*
 * void rsrForEach(Context *c,
 *                 Script *target,
 *                 Allocation *in,
 *                 Allocation *out,
 *                 const void *usr,
 *                 uint32_t usrBytes,
 *                 const RsScriptCall *call);
 */
extern "C" void _ZN7android12renderscript10rsrForEachEPNS0_7ContextEPNS0_6ScriptEPNS0_10AllocationES6_PKvjPK12RsScriptCall(
        Context *c, Script *target, Allocation *in, Allocation *out, void const *usr, unsigned int usrBytes, const RsScriptCall *call) {
    uint32_t numInputs = (in != nullptr) ? (1) : (0);
    _ZN7android12renderscript10rsrForEachEPNS0_7ContextEPNS0_6ScriptEjjPPNS0_10AllocationES6_PKvjPK12RsScriptCall(c, target, 0, numInputs, &in, out, usr, usrBytes, call);
}
