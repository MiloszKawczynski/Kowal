draw_self();


draw_set_color(c_red)
draw_text(o_kowal.x+((ostx[1]-800)*image_xscale)-22*xs,o_kowal.y+((osty[1]-450)*image_yscale)+15,"o")
draw_point(o_kowal.x+((ostx[1]-800)*image_xscale)-22*xs,o_kowal.y+((osty[1]-450)*image_yscale)+15)

draw_set_color(c_blue)
draw_text(o_kowal.x+((global.tx[ostp[1]]-800)*image_xscale)-22*xs,o_kowal.y+((global.ty[ostp[1]]-450)*image_yscale)+15,"o")
draw_point(o_kowal.x+((global.tx[ostp[1]]-800)*image_xscale)-22*xs,o_kowal.y+((global.ty[ostp[1]]-450)*image_yscale)+15)

draw_set_color(c_lime)
draw_arrow(o_kowal.x+((global.tx[ostp[1]]-800)*image_xscale)-22*xs,o_kowal.y+((global.ty[ostp[1]]-450)*image_yscale)+15,o_kowal.x+((ostx[1]-800)*image_xscale)-22*xs,o_kowal.y+((osty[1]-450)*image_yscale)+15,10)


/*
draw_set_color(c_orange)
draw_line_width(o_kowal.x+((global.ox1-800)*image_xscale)-22*xs,o_kowal.y+((global.oy1-450)*image_yscale)+15,o_kowal.x+(global.ox2-800)*image_xscale-22*xs,o_kowal.y+((global.oy2-450)*image_yscale)+15,10)
*/