cmake_minimum_required(VERSION 3.25)
project(cyclone)

set(LIB_DIR ${PD4WEB_EXTERNAL_DIR}/${PROJECT_NAME})

include_directories(${LIB_DIR}/shared/)

function(ReplaceLine file line new_line)
    file(READ ${file} FILE_CONTENTS)
    string(REPLACE "${line}" "${new_line}" FILE_CONTENTS "${FILE_CONTENTS}")
    file(WRITE ${file} "${FILE_CONTENTS}")
endfunction()

ReplaceLine(
    "${LIB_DIR}/shared/common/shared.h"
    "#if defined(__linux__) || defined(__FreeBSD_kernel__) || defined(__GNU__)"
    "#if defined(__linux__) || defined(__FreeBSD_kernel__) || defined(__GNU__) || defined(__EMSCRIPTEN__)")

# ╭──────────────────────────────────────╮
# │               Control                │
# ╰──────────────────────────────────────╯
pd_add_external(accum "${LIB_DIR}/cyclone_objects/binaries/control/accum.c")
pd_add_external(acos "${LIB_DIR}/cyclone_objects/binaries/control/acos.c")
pd_add_external(anal "${LIB_DIR}/cyclone_objects/binaries/control/anal.c")
pd_add_external(asin "${LIB_DIR}/cyclone_objects/binaries/control/asin.c")
pd_add_external(bangbang "${LIB_DIR}/cyclone_objects/binaries/control/bangbang.c")
pd_add_external(borax "${LIB_DIR}/cyclone_objects/binaries/control/borax.c")
pd_add_external(bucket "${LIB_DIR}/cyclone_objects/binaries/control/bucket.c")
pd_add_external(cartopol "${LIB_DIR}/cyclone_objects/binaries/control/cartopol.c")
pd_add_external(counter "${LIB_DIR}/cyclone_objects/binaries/control/counter.c")
pd_add_external(cosh "${LIB_DIR}/cyclone_objects/binaries/control/cosh.c")
pd_add_external(cycle "${LIB_DIR}/cyclone_objects/binaries/control/cycle.c")
pd_add_external(decode "${LIB_DIR}/cyclone_objects/binaries/control/decode.c")
pd_add_external(flush "${LIB_DIR}/cyclone_objects/binaries/control/flush.c")
pd_add_external(forward "${LIB_DIR}/cyclone_objects/binaries/control/forward.c")
pd_add_external(fromsymbol "${LIB_DIR}/cyclone_objects/binaries/control/fromsymbol.c")
pd_add_external(funnel "${LIB_DIR}/cyclone_objects/binaries/control/funnel.c")
pd_add_external(gate "${LIB_DIR}/cyclone_objects/binaries/control/gate.c")
pd_add_external(histo "${LIB_DIR}/cyclone_objects/binaries/control/histo.c")
pd_add_external(listfunnel "${LIB_DIR}/cyclone_objects/binaries/control/listfunnel.c")
pd_add_external(linedrive "${LIB_DIR}/cyclone_objects/binaries/control/linedrive.c")
pd_add_external(maximum "${LIB_DIR}/cyclone_objects/binaries/control/maximum.c")
pd_add_external(mean "${LIB_DIR}/cyclone_objects/binaries/control/mean.c")
pd_add_external(midiflush "${LIB_DIR}/cyclone_objects/binaries/control/midiflush.c")
pd_add_external(midiformat "${LIB_DIR}/cyclone_objects/binaries/control/midiformat.c")
pd_add_external(midiparse "${LIB_DIR}/cyclone_objects/binaries/control/midiparse.c")
pd_add_external(minimum "${LIB_DIR}/cyclone_objects/binaries/control/minimum.c")
pd_add_external(next "${LIB_DIR}/cyclone_objects/binaries/control/next.c")
pd_add_external(onebang "${LIB_DIR}/cyclone_objects/binaries/control/onebang.c")
pd_add_external(past "${LIB_DIR}/cyclone_objects/binaries/control/past.c")
pd_add_external(peak "${LIB_DIR}/cyclone_objects/binaries/control/peak.c")
pd_add_external(poltocar "${LIB_DIR}/cyclone_objects/binaries/control/poltocar.c")
pd_add_external(sinh "${LIB_DIR}/cyclone_objects/binaries/control/sinh.c")
pd_add_external(spell "${LIB_DIR}/cyclone_objects/binaries/control/spell.c")
pd_add_external(split "${LIB_DIR}/cyclone_objects/binaries/control/split.c")
pd_add_external(spray "${LIB_DIR}/cyclone_objects/binaries/control/spray.c")
pd_add_external(sprintf "${LIB_DIR}/cyclone_objects/binaries/control/sprintf.c")
pd_add_external(sustain "${LIB_DIR}/cyclone_objects/binaries/control/sustain.c")
pd_add_external(switch "${LIB_DIR}/cyclone_objects/binaries/control/switch.c")
pd_add_external(tanh "${LIB_DIR}/cyclone_objects/binaries/control/tanh.c")
pd_add_external(trough "${LIB_DIR}/cyclone_objects/binaries/control/trough.c")
pd_add_external(universal "${LIB_DIR}/cyclone_objects/binaries/control/universal.c")
pd_add_external(unjoin "${LIB_DIR}/cyclone_objects/binaries/control/unjoin.c")
pd_add_external(uzi "${LIB_DIR}/cyclone_objects/binaries/control/uzi.c")
pd_add_external(xbendin "${LIB_DIR}/cyclone_objects/binaries/control/xbendin.c")
pd_add_external(xbendin2 "${LIB_DIR}/cyclone_objects/binaries/control/xbendin2.c")
pd_add_external(xbendout "${LIB_DIR}/cyclone_objects/binaries/control/xbendout.c")
pd_add_external(xbendout2 "${LIB_DIR}/cyclone_objects/binaries/control/xbendout2.c")
pd_add_external(xnotein "${LIB_DIR}/cyclone_objects/binaries/control/xnotein.c")
pd_add_external(xnoteout "${LIB_DIR}/cyclone_objects/binaries/control/xnoteout.c")
pd_add_external(zl "${LIB_DIR}/cyclone_objects/binaries/control/zl.c")
pd_add_external(zl.ecils "${LIB_DIR}/cyclone_objects/binaries/control/zl.c")
pd_add_external(zl.group "${LIB_DIR}/cyclone_objects/binaries/control/zl.c")
pd_add_external(zl.iter "${LIB_DIR}/cyclone_objects/binaries/control/zl.c")
pd_add_external(zl.join "${LIB_DIR}/cyclone_objects/binaries/control/zl.c")
pd_add_external(zl.len "${LIB_DIR}/cyclone_objects/binaries/control/zl.c")
pd_add_external(zl.mth "${LIB_DIR}/cyclone_objects/binaries/control/zl.c")
pd_add_external(zl.nth "${LIB_DIR}/cyclone_objects/binaries/control/zl.c")
pd_add_external(zl.reg "${LIB_DIR}/cyclone_objects/binaries/control/zl.c")
pd_add_external(zl.rev "${LIB_DIR}/cyclone_objects/binaries/control/zl.c")
pd_add_external(zl.rot "${LIB_DIR}/cyclone_objects/binaries/control/zl.c")
pd_add_external(zl.sect "${LIB_DIR}/cyclone_objects/binaries/control/zl.c")
pd_add_external(zl.slice "${LIB_DIR}/cyclone_objects/binaries/control/zl.c")
pd_add_external(zl.sort "${LIB_DIR}/cyclone_objects/binaries/control/zl.c")
pd_add_external(zl.sub "${LIB_DIR}/cyclone_objects/binaries/control/zl.c")
pd_add_external(zl.union "${LIB_DIR}/cyclone_objects/binaries/control/zl.c")
pd_add_external(zl.change "${LIB_DIR}/cyclone_objects/binaries/control/zl.c")
pd_add_external(zl.compare "${LIB_DIR}/cyclone_objects/binaries/control/zl.c")
pd_add_external(zl.delace "${LIB_DIR}/cyclone_objects/binaries/control/zl.c")
pd_add_external(zl.filter "${LIB_DIR}/cyclone_objects/binaries/control/zl.c")
pd_add_external(zl.lace "${LIB_DIR}/cyclone_objects/binaries/control/zl.c")
pd_add_external(zl.lookup "${LIB_DIR}/cyclone_objects/binaries/control/zl.c")
pd_add_external(zl.median "${LIB_DIR}/cyclone_objects/binaries/control/zl.c")
pd_add_external(zl.queue "${LIB_DIR}/cyclone_objects/binaries/control/zl.c")
pd_add_external(zl.scramble "${LIB_DIR}/cyclone_objects/binaries/control/zl.c")
pd_add_external(zl.stack "${LIB_DIR}/cyclone_objects/binaries/control/zl.c")
pd_add_external(zl.stream "${LIB_DIR}/cyclone_objects/binaries/control/zl.c")
pd_add_external(zl.sum "${LIB_DIR}/cyclone_objects/binaries/control/zl.c")
pd_add_external(zl.thin "${LIB_DIR}/cyclone_objects/binaries/control/zl.c")
pd_add_external(zl.unique "${LIB_DIR}/cyclone_objects/binaries/control/zl.c")
pd_add_external(zl.indexmap "${LIB_DIR}/cyclone_objects/binaries/control/zl.c")
pd_add_external(zl.swap "${LIB_DIR}/cyclone_objects/binaries/control/zl.c")
pd_add_external(acosh "${LIB_DIR}/cyclone_objects/binaries/control/acosh.c")
pd_add_external(asinh "${LIB_DIR}/cyclone_objects/binaries/control/asinh.c")
pd_add_external(atanh "${LIB_DIR}/cyclone_objects/binaries/control/atanh.c")
pd_add_external(atodb "${LIB_DIR}/cyclone_objects/binaries/control/atodb.c")
pd_add_external(dbtoa "${LIB_DIR}/cyclone_objects/binaries/control/dbtoa.c")
pd_add_external(join "${LIB_DIR}/cyclone_objects/binaries/control/join.c")
pd_add_external(loadmess "${LIB_DIR}/cyclone_objects/binaries/control/loadmess.c")
pd_add_external(pong "${LIB_DIR}/cyclone_objects/binaries/control/pong.c")
pd_add_external(pak "${LIB_DIR}/cyclone_objects/binaries/control/pak.c")
pd_add_external(rdiv "${LIB_DIR}/cyclone_objects/binaries/control/rdiv.c")
pd_add_external(rminus "${LIB_DIR}/cyclone_objects/binaries/control/rminus.c")
pd_add_external(round "${LIB_DIR}/cyclone_objects/binaries/control/round.c")
pd_add_external(scale "${LIB_DIR}/cyclone_objects/binaries/control/scale.c")

# ╭──────────────────────────────────────╮
# │            Signal Classes            │
# ╰──────────────────────────────────────╯
pd_add_external(acos~ "${LIB_DIR}/cyclone_objects/binaries/audio/acos.c")
pd_add_external(acosh~ "${LIB_DIR}/cyclone_objects/binaries/audio/acosh.c")
pd_add_external(allpass~ "${LIB_DIR}/cyclone_objects/binaries/audio/allpass.c")
pd_add_external(asinh~ "${LIB_DIR}/cyclone_objects/binaries/audio/asinh.c")
pd_add_external(asin~ "${LIB_DIR}/cyclone_objects/binaries/audio/asin.c")
pd_add_external(atan~ "${LIB_DIR}/cyclone_objects/binaries/audio/atan.c")
pd_add_external(atan2~ "${LIB_DIR}/cyclone_objects/binaries/audio/atan2.c")
pd_add_external(atanh~ "${LIB_DIR}/cyclone_objects/binaries/audio/atanh.c")
pd_add_external(average~ "${LIB_DIR}/cyclone_objects/binaries/audio/average.c")
pd_add_external(avg~ "${LIB_DIR}/cyclone_objects/binaries/audio/avg.c")
pd_add_external(change~ "${LIB_DIR}/cyclone_objects/binaries/audio/change.c")
pd_add_external(click~ "${LIB_DIR}/cyclone_objects/binaries/audio/click.c")
pd_add_external(clip~ "${LIB_DIR}/cyclone_objects/binaries/audio/clip.c")
pd_add_external(cosh~ "${LIB_DIR}/cyclone_objects/binaries/audio/cosh.c")
pd_add_external(cosx~ "${LIB_DIR}/cyclone_objects/binaries/audio/cosx.c")
pd_add_external(count~ "${LIB_DIR}/cyclone_objects/binaries/audio/count.c")
pd_add_external(comb~ "${LIB_DIR}/cyclone_objects/binaries/audio/comb.c")
pd_add_external(curve~ "${LIB_DIR}/cyclone_objects/binaries/audio/curve.c")
pd_add_external(cycle~ "${LIB_DIR}/cyclone_objects/binaries/audio/cycle.c")
pd_add_external(delta~ "${LIB_DIR}/cyclone_objects/binaries/audio/delta.c")
pd_add_external(deltaclip~ "${LIB_DIR}/cyclone_objects/binaries/audio/deltaclip.c")
pd_add_external(edge~ "${LIB_DIR}/cyclone_objects/binaries/audio/edge.c")
pd_add_external(line~ "${LIB_DIR}/cyclone_objects/binaries/audio/line.c")
pd_add_external(lores~ "${LIB_DIR}/cyclone_objects/binaries/audio/lores.c")
pd_add_external(maximum~ "${LIB_DIR}/cyclone_objects/binaries/audio/maximum.c")
pd_add_external(minimum~ "${LIB_DIR}/cyclone_objects/binaries/audio/minimum.c")
pd_add_external(mstosamps~ "${LIB_DIR}/cyclone_objects/binaries/audio/mstosamps.c")
pd_add_external(onepole~ "${LIB_DIR}/cyclone_objects/binaries/audio/onepole.c")
pd_add_external(overdrive~ "${LIB_DIR}/cyclone_objects/binaries/audio/overdrive.c")
pd_add_external(peakamp~ "${LIB_DIR}/cyclone_objects/binaries/audio/peakamp.c")
pd_add_external(phasewrap~ "${LIB_DIR}/cyclone_objects/binaries/audio/phasewrap.c")
pd_add_external(pong~ "${LIB_DIR}/cyclone_objects/binaries/audio/pong.c")
pd_add_external(pow~ "${LIB_DIR}/cyclone_objects/binaries/audio/pow.c")
pd_add_external(rampsmooth~ "${LIB_DIR}/cyclone_objects/binaries/audio/rampsmooth.c")
pd_add_external(reson~ "${LIB_DIR}/cyclone_objects/binaries/audio/reson.c")
pd_add_external(sampstoms~ "${LIB_DIR}/cyclone_objects/binaries/audio/sampstoms.c")
pd_add_external(sinh~ "${LIB_DIR}/cyclone_objects/binaries/audio/sinh.c")
pd_add_external(sinx~ "${LIB_DIR}/cyclone_objects/binaries/audio/sinx.c")
pd_add_external(slide~ "${LIB_DIR}/cyclone_objects/binaries/audio/slide.c")
pd_add_external(snapshot~ "${LIB_DIR}/cyclone_objects/binaries/audio/snapshot.c")
pd_add_external(spike~ "${LIB_DIR}/cyclone_objects/binaries/audio/spike.c")
pd_add_external(svf~ "${LIB_DIR}/cyclone_objects/binaries/audio/svf.c")
pd_add_external(tanh~ "${LIB_DIR}/cyclone_objects/binaries/audio/tanh.c")
pd_add_external(tanx~ "${LIB_DIR}/cyclone_objects/binaries/audio/tanx.c")
pd_add_external(teeth~ "${LIB_DIR}/cyclone_objects/binaries/audio/teeth.c")
pd_add_external(togedge "${LIB_DIR}/cyclone_objects/binaries/control/togedge.c")
pd_add_external(train~ "${LIB_DIR}/cyclone_objects/binaries/audio/train.c")
pd_add_external(trapezoid~ "${LIB_DIR}/cyclone_objects/binaries/audio/trapezoid.c")
pd_add_external(triangle~ "${LIB_DIR}/cyclone_objects/binaries/audio/triangle.c")
pd_add_external(zerox~ "${LIB_DIR}/cyclone_objects/binaries/audio/zerox.c")
pd_add_external(atodb~ "${LIB_DIR}/cyclone_objects/binaries/audio/atodb.c")
pd_add_external(cross~ "${LIB_DIR}/cyclone_objects/binaries/audio/cross.c")
pd_add_external(dbtoa~ "${LIB_DIR}/cyclone_objects/binaries/audio/dbtoa.c")
pd_add_external(degrade~ "${LIB_DIR}/cyclone_objects/binaries/audio/degrade.c")
pd_add_external(downsamp~ "${LIB_DIR}/cyclone_objects/binaries/audio/downsamp.c")
pd_add_external(equals~ "${LIB_DIR}/cyclone_objects/binaries/audio/equals.c")
pd_add_external(greaterthan~ "${LIB_DIR}/cyclone_objects/binaries/audio/greaterthan.c")
pd_add_external(greaterthaneq~ "${LIB_DIR}/cyclone_objects/binaries/audio/greaterthaneq.c")
pd_add_external(lessthan~ "${LIB_DIR}/cyclone_objects/binaries/audio/lessthan.c")
pd_add_external(lessthaneq~ "${LIB_DIR}/cyclone_objects/binaries/audio/lessthaneq.c")
pd_add_external(modulo~ "${LIB_DIR}/cyclone_objects/binaries/audio/modulo.c")
pd_add_external(notequals~ "${LIB_DIR}/cyclone_objects/binaries/audio/notequals.c")
pd_add_external(phaseshift~ "${LIB_DIR}/cyclone_objects/binaries/audio/phaseshift.c")
pd_add_external(rdiv~ "${LIB_DIR}/cyclone_objects/binaries/audio/rdiv.c")
pd_add_external(rminus~ "${LIB_DIR}/cyclone_objects/binaries/audio/rminus.c")
pd_add_external(round~ "${LIB_DIR}/cyclone_objects/binaries/audio/round.c")
pd_add_external(scale~ "${LIB_DIR}/cyclone_objects/binaries/audio/scale.c")
pd_add_external(thresh~ "${LIB_DIR}/cyclone_objects/binaries/audio/thresh.c")
pd_add_external(trunc~ "${LIB_DIR}/cyclone_objects/binaries/audio/trunc.c")

# ╭──────────────────────────────────────╮
# │      Classes with Dependencies       │
# ╰──────────────────────────────────────╯
set(hfile "${LIB_DIR}/shared/common/file.c")
pd_add_external(capture "${LIB_DIR}/cyclone_objects/binaries/control/capture.c;${hfile}")
pd_add_external(mtr "${LIB_DIR}/cyclone_objects/binaries/control/mtr.c;${hfile}")
pd_add_external(coll "${LIB_DIR}/cyclone_objects/binaries/control/coll.c;${hfile}")

set(hgrow "${LIB_DIR}/shared/common/grow.c")
pd_add_external(tosymbol "${LIB_DIR}/cyclone_objects/binaries/control/tosymbol.c;${hgrow}")
pd_add_external(append "${LIB_DIR}/cyclone_objects/binaries/control/append.c;${hgrow}")
pd_add_external(clip "${LIB_DIR}/cyclone_objects/binaries/control/clip.c;${hgrow}")
pd_add_external(prepend "${LIB_DIR}/cyclone_objects/binaries/control/prepend.c;${hgrow}")
pd_add_external(thresh "${LIB_DIR}/cyclone_objects/binaries/control/thresh.c;${hgrow}")
pd_add_external(substitute "${LIB_DIR}/cyclone_objects/binaries/control/substitute.c;${hgrow}")
pd_add_external(speedlim "${LIB_DIR}/cyclone_objects/binaries/control/speedlim.c;${hgrow}")
pd_add_external(match "${LIB_DIR}/cyclone_objects/binaries/control/match.c;${hgrow}")
pd_add_external(iter "${LIB_DIR}/cyclone_objects/binaries/control/iter.c;${hgrow}")
pd_add_external(buddy "${LIB_DIR}/cyclone_objects/binaries/control/buddy.c;${hgrow}")
pd_add_external(bondo "${LIB_DIR}/cyclone_objects/binaries/control/bondo.c;${hgrow}")
pd_add_external(pv "${LIB_DIR}/cyclone_objects/binaries/control/pv.c;${hgrow}")

set(hrandfile "${LIB_DIR}/shared/control/rand.c;${LIB_DIR}/shared/common/file.c")
pd_add_external(prob "${LIB_DIR}/cyclone_objects/binaries/control/prob.c;${hrandfile}")

set(hgui "${LIB_DIR}/shared/control/gui.c")
pd_add_external(active "${LIB_DIR}/cyclone_objects/binaries/control/active.c;${hgui}")
pd_add_external(mousefilter "${LIB_DIR}/cyclone_objects/binaries/control/mousefilter.c;${hgui}")
pd_add_external(mousestate "${LIB_DIR}/cyclone_objects/binaries/control/mousestate.c;${hgui}")

set(htree "${LIB_DIR}/shared/control/tree.c")
pd_add_external(offer "${LIB_DIR}/cyclone_objects/binaries/control/offer.c;${htree}")

set(htreefile "${LIB_DIR}/shared/control/tree.c;${LIB_DIR}/shared/common/file.c")
pd_add_external(funbuff "${LIB_DIR}/cyclone_objects/binaries/control/funbuff.c;${htreefile}")

set(hrand "${LIB_DIR}/shared/control/rand.c")
pd_add_external(drunk "${LIB_DIR}/cyclone_objects/binaries/control/drunk.c;${hrand}")

set(hrandgrow "${LIB_DIR}/shared/control/rand.c;${LIB_DIR}/shared/common/grow.c")
pd_add_external(urn "${LIB_DIR}/cyclone_objects/binaries/control/urn.c;${hrandgrow}")

set(hrandgrowfile
    "${LIB_DIR}/shared/control/rand.c;${LIB_DIR}/shared/common/grow.c;${LIB_DIR}/shared/common/file.c"
)
pd_add_external(table "${LIB_DIR}/cyclone_objects/binaries/control/table.c;${hrandgrowfile}")

set(hseq
    "${LIB_DIR}/shared/control/mifi.c;${LIB_DIR}/shared/common/file.c;${LIB_DIR}/shared/common/grow.c"
)
pd_add_external(seq "${LIB_DIR}/cyclone_objects/binaries/control/seq.c;${hseq}")

# New dependencies
pd_add_external(grab "${LIB_DIR}/cyclone_objects/binaries/control/grab.c;${LIB_DIR}/shared/common/magicbit.c")
pd_add_external(decide "${LIB_DIR}/cyclone_objects/binaries/control/decide.c;${LIB_DIR}/shared/common/random.c")

# New dependencies for rand~ and pink~
pd_add_external(rand~ "${LIB_DIR}/cyclone_objects/binaries/audio/rand.c;${LIB_DIR}/shared/common/random.c")
pd_add_external(pink~ "${LIB_DIR}/cyclone_objects/binaries/audio/pink.c;${LIB_DIR}/shared/common/random.c")

# New dependencies for frameaccum~ and framedelta~
pd_add_external(frameaccum~ "${LIB_DIR}/cyclone_objects/binaries/audio/frameaccum.c;${LIB_DIR}/shared/common/grow.c")
pd_add_external(framedelta~ "${LIB_DIR}/cyclone_objects/binaries/audio/framedelta.c;${LIB_DIR}/shared/common/grow.c")

# New dependency for capture~
pd_add_external(capture~ "${LIB_DIR}/cyclone_objects/binaries/audio/capture.c;${LIB_DIR}/shared/common/file.c")

# New dependencies for various audio objects using magicbit
pd_add_external(cartopol~ "${LIB_DIR}/cyclone_objects/binaries/audio/cartopol.c;${LIB_DIR}/shared/common/magicbit.c")
pd_add_external(delay~ "${LIB_DIR}/cyclone_objects/binaries/audio/delay.c;${LIB_DIR}/shared/common/magicbit.c")
pd_add_external(plusequals~ "${LIB_DIR}/cyclone_objects/binaries/audio/plusequals.c;${LIB_DIR}/shared/common/magicbit.c")
pd_add_external(minmax~ "${LIB_DIR}/cyclone_objects/binaries/audio/minmax.c;${LIB_DIR}/shared/common/magicbit.c")
pd_add_external(poltocar~ "${LIB_DIR}/cyclone_objects/binaries/audio/poltocar.c;${LIB_DIR}/shared/common/magicbit.c")
pd_add_external(matrix~ "${LIB_DIR}/cyclone_objects/binaries/audio/matrix.c;${LIB_DIR}/shared/common/magicbit.c")
pd_add_external(sah~ "${LIB_DIR}/cyclone_objects/binaries/audio/sah.c;${LIB_DIR}/shared/common/magicbit.c")
pd_add_external(gate~ "${LIB_DIR}/cyclone_objects/binaries/audio/gate.c;${LIB_DIR}/shared/common/magicbit.c")
pd_add_external(selector~ "${LIB_DIR}/cyclone_objects/binaries/audio/selector.c;${LIB_DIR}/shared/common/magicbit.c")
pd_add_external(kink~ "${LIB_DIR}/cyclone_objects/binaries/audio/kink.c;${LIB_DIR}/shared/common/magicbit.c")
pd_add_external(vectral~ "${LIB_DIR}/cyclone_objects/binaries/audio/vectral.c;${LIB_DIR}/shared/common/magicbit.c")
pd_add_external(bitand~ "${LIB_DIR}/cyclone_objects/binaries/audio/bitand.c;${LIB_DIR}/shared/common/magicbit.c")
pd_add_external(bitnot~ "${LIB_DIR}/cyclone_objects/binaries/audio/bitnot.c;${LIB_DIR}/shared/common/magicbit.c")
pd_add_external(bitor~ "${LIB_DIR}/cyclone_objects/binaries/audio/bitor.c;${LIB_DIR}/shared/common/magicbit.c")
pd_add_external(bitsafe~ "${LIB_DIR}/cyclone_objects/binaries/audio/bitsafe.c;${LIB_DIR}/shared/common/magicbit.c")
pd_add_external(bitshift~ "${LIB_DIR}/cyclone_objects/binaries/audio/bitshift.c;${LIB_DIR}/shared/common/magicbit.c")
pd_add_external(bitxor~ "${LIB_DIR}/cyclone_objects/binaries/audio/bitxor.c;${LIB_DIR}/shared/common/magicbit.c")

# New dependency for scope~
pd_add_external(scope~ "${LIB_DIR}/cyclone_objects/binaries/audio/scope.c;${LIB_DIR}/shared/common/magicbit.c")

# New dependency for comment
pd_add_external(comment "${LIB_DIR}/cyclone_objects/binaries/control/comment.c;${LIB_DIR}/shared/control/s_cycloneutf8.c")

# New dependencies for audio objects using cybuf
pd_add_external(buffir~ "${LIB_DIR}/cyclone_objects/binaries/audio/buffir.c;${LIB_DIR}/shared/signal/cybuf.c")
pd_add_external(lookup~ "${LIB_DIR}/cyclone_objects/binaries/audio/lookup.c;${LIB_DIR}/shared/signal/cybuf.c")
pd_add_external(index~ "${LIB_DIR}/cyclone_objects/binaries/audio/index.c;${LIB_DIR}/shared/signal/cybuf.c")
pd_add_external(peek~ "${LIB_DIR}/cyclone_objects/binaries/audio/peek.c;${LIB_DIR}/shared/signal/cybuf.c")
pd_add_external(poke~ "${LIB_DIR}/cyclone_objects/binaries/audio/poke.c;${LIB_DIR}/shared/signal/cybuf.c")
pd_add_external(record~ "${LIB_DIR}/cyclone_objects/binaries/audio/record.c;${LIB_DIR}/shared/signal/cybuf.c")
pd_add_external(wave~ "${LIB_DIR}/cyclone_objects/binaries/audio/wave.c;${LIB_DIR}/shared/signal/cybuf.c")

# New dependency for play~ using both magicbit and cybuf
pd_add_external(play~ "${LIB_DIR}/cyclone_objects/binaries/audio/play.c;${LIB_DIR}/shared/common/magicbit.c;${LIB_DIR}/shared/signal/cybuf.c")

# New dependency for cyclone using magicbit
pd_add_external(cyclone "${LIB_DIR}/cyclone_objects/binaries/cyclone_lib.c;${LIB_DIR}/shared/common/magicbit.c")

