// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Version: 2022.1
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module userdma_paralleltostreamwithburst_Pipeline_VITIS_LOOP_94_2 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        m_axi_gmem1_AWVALID,
        m_axi_gmem1_AWREADY,
        m_axi_gmem1_AWADDR,
        m_axi_gmem1_AWID,
        m_axi_gmem1_AWLEN,
        m_axi_gmem1_AWSIZE,
        m_axi_gmem1_AWBURST,
        m_axi_gmem1_AWLOCK,
        m_axi_gmem1_AWCACHE,
        m_axi_gmem1_AWPROT,
        m_axi_gmem1_AWQOS,
        m_axi_gmem1_AWREGION,
        m_axi_gmem1_AWUSER,
        m_axi_gmem1_WVALID,
        m_axi_gmem1_WREADY,
        m_axi_gmem1_WDATA,
        m_axi_gmem1_WSTRB,
        m_axi_gmem1_WLAST,
        m_axi_gmem1_WID,
        m_axi_gmem1_WUSER,
        m_axi_gmem1_ARVALID,
        m_axi_gmem1_ARREADY,
        m_axi_gmem1_ARADDR,
        m_axi_gmem1_ARID,
        m_axi_gmem1_ARLEN,
        m_axi_gmem1_ARSIZE,
        m_axi_gmem1_ARBURST,
        m_axi_gmem1_ARLOCK,
        m_axi_gmem1_ARCACHE,
        m_axi_gmem1_ARPROT,
        m_axi_gmem1_ARQOS,
        m_axi_gmem1_ARREGION,
        m_axi_gmem1_ARUSER,
        m_axi_gmem1_RVALID,
        m_axi_gmem1_RREADY,
        m_axi_gmem1_RDATA,
        m_axi_gmem1_RLAST,
        m_axi_gmem1_RID,
        m_axi_gmem1_RFIFONUM,
        m_axi_gmem1_RUSER,
        m_axi_gmem1_RRESP,
        m_axi_gmem1_BVALID,
        m_axi_gmem1_BREADY,
        m_axi_gmem1_BRESP,
        m_axi_gmem1_BID,
        m_axi_gmem1_BUSER,
        outbuf_din,
        outbuf_num_data_valid,
        outbuf_fifo_cap,
        outbuf_full_n,
        outbuf_write,
        count,
        sext_ln94,
        select_ln94_cast,
        zext_ln94
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output   m_axi_gmem1_AWVALID;
input   m_axi_gmem1_AWREADY;
output  [63:0] m_axi_gmem1_AWADDR;
output  [0:0] m_axi_gmem1_AWID;
output  [31:0] m_axi_gmem1_AWLEN;
output  [2:0] m_axi_gmem1_AWSIZE;
output  [1:0] m_axi_gmem1_AWBURST;
output  [1:0] m_axi_gmem1_AWLOCK;
output  [3:0] m_axi_gmem1_AWCACHE;
output  [2:0] m_axi_gmem1_AWPROT;
output  [3:0] m_axi_gmem1_AWQOS;
output  [3:0] m_axi_gmem1_AWREGION;
output  [0:0] m_axi_gmem1_AWUSER;
output   m_axi_gmem1_WVALID;
input   m_axi_gmem1_WREADY;
output  [31:0] m_axi_gmem1_WDATA;
output  [3:0] m_axi_gmem1_WSTRB;
output   m_axi_gmem1_WLAST;
output  [0:0] m_axi_gmem1_WID;
output  [0:0] m_axi_gmem1_WUSER;
output   m_axi_gmem1_ARVALID;
input   m_axi_gmem1_ARREADY;
output  [63:0] m_axi_gmem1_ARADDR;
output  [0:0] m_axi_gmem1_ARID;
output  [31:0] m_axi_gmem1_ARLEN;
output  [2:0] m_axi_gmem1_ARSIZE;
output  [1:0] m_axi_gmem1_ARBURST;
output  [1:0] m_axi_gmem1_ARLOCK;
output  [3:0] m_axi_gmem1_ARCACHE;
output  [2:0] m_axi_gmem1_ARPROT;
output  [3:0] m_axi_gmem1_ARQOS;
output  [3:0] m_axi_gmem1_ARREGION;
output  [0:0] m_axi_gmem1_ARUSER;
input   m_axi_gmem1_RVALID;
output   m_axi_gmem1_RREADY;
input  [31:0] m_axi_gmem1_RDATA;
input   m_axi_gmem1_RLAST;
input  [0:0] m_axi_gmem1_RID;
input  [6:0] m_axi_gmem1_RFIFONUM;
input  [0:0] m_axi_gmem1_RUSER;
input  [1:0] m_axi_gmem1_RRESP;
input   m_axi_gmem1_BVALID;
output   m_axi_gmem1_BREADY;
input  [1:0] m_axi_gmem1_BRESP;
input  [0:0] m_axi_gmem1_BID;
input  [0:0] m_axi_gmem1_BUSER;
output  [32:0] outbuf_din;
input  [6:0] outbuf_num_data_valid;
input  [6:0] outbuf_fifo_cap;
input   outbuf_full_n;
output   outbuf_write;
input  [31:0] count;
input  [61:0] sext_ln94;
input  [31:0] select_ln94_cast;
input  [3:0] zext_ln94;

reg ap_idle;
reg m_axi_gmem1_RREADY;
reg outbuf_write;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
reg   [0:0] icmp_ln94_reg_220;
reg    ap_block_state3_pp0_stage0_iter2;
reg    ap_block_state4_pp0_stage0_iter3;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln94_fu_131_p2;
reg    ap_condition_exit_pp0_iter1_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    gmem1_blk_n_R;
wire    ap_block_pp0_stage0;
reg    outbuf_blk_n;
wire   [63:0] zext_ln94_cast_fu_106_p1;
reg   [63:0] zext_ln94_cast_reg_205;
reg    ap_block_pp0_stage0_11001;
wire  signed [63:0] select_ln94_cast_cast_fu_110_p1;
reg  signed [63:0] select_ln94_cast_cast_reg_210;
wire   [0:0] out_val_last_V_fu_156_p2;
reg   [0:0] out_val_last_V_reg_224;
reg   [0:0] out_val_last_V_reg_224_pp0_iter2_reg;
reg   [31:0] out_val_data_filed_V_reg_229;
reg    ap_condition_exit_pp0_iter2_stage0;
reg   [63:0] i_fu_62;
wire   [63:0] add_ln94_fu_136_p2;
wire    ap_loop_init;
reg   [31:0] paralleltostreamwithburst_ap_uint_ap_uint_int_hls_stream_m2s_len_fu_66;
wire   [31:0] add_ln103_fu_162_p2;
reg    ap_block_pp0_stage0_01001;
wire   [0:0] icmp_ln97_fu_145_p2;
wire   [0:0] icmp_ln97_1_fu_151_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_done_reg = 1'b0;
end

userdma_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter1_stage0),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter1_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter2_stage0)) begin
            ap_enable_reg_pp0_iter3 <= 1'b0;
        end else if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        if ((ap_loop_init == 1'b1)) begin
            i_fu_62 <= 64'd0;
        end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln94_fu_131_p2 == 1'd0))) begin
            i_fu_62 <= add_ln94_fu_136_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        if ((ap_loop_init == 1'b1)) begin
            paralleltostreamwithburst_ap_uint_ap_uint_int_hls_stream_m2s_len_fu_66 <= count;
        end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln94_fu_131_p2 == 1'd0))) begin
            paralleltostreamwithburst_ap_uint_ap_uint_int_hls_stream_m2s_len_fu_66 <= add_ln103_fu_162_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready;
        icmp_ln94_reg_220 <= icmp_ln94_fu_131_p2;
        select_ln94_cast_cast_reg_210 <= select_ln94_cast_cast_fu_110_p1;
        zext_ln94_cast_reg_205[3 : 0] <= zext_ln94_cast_fu_106_p1[3 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln94_reg_220 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        out_val_data_filed_V_reg_229 <= m_axi_gmem1_RDATA;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln94_fu_131_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        out_val_last_V_reg_224 <= out_val_last_V_fu_156_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        out_val_last_V_reg_224_pp0_iter2_reg <= out_val_last_V_reg_224;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln94_fu_131_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln94_reg_220 == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_condition_exit_pp0_iter2_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter2_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln94_reg_220 == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        gmem1_blk_n_R = m_axi_gmem1_RVALID;
    end else begin
        gmem1_blk_n_R = 1'b1;
    end
end

always @ (*) begin
    if (((icmp_ln94_reg_220 == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        m_axi_gmem1_RREADY = 1'b1;
    end else begin
        m_axi_gmem1_RREADY = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        outbuf_blk_n = outbuf_full_n;
    end else begin
        outbuf_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        outbuf_write = 1'b1;
    end else begin
        outbuf_write = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln103_fu_162_p2 = ($signed(paralleltostreamwithburst_ap_uint_ap_uint_int_hls_stream_m2s_len_fu_66) + $signed(32'd4294967295));

assign add_ln94_fu_136_p2 = (i_fu_62 + 64'd1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = (((icmp_ln94_reg_220 == 1'd0) & (m_axi_gmem1_RVALID == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (outbuf_full_n == 1'b0)));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = (((icmp_ln94_reg_220 == 1'd0) & (m_axi_gmem1_RVALID == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (outbuf_full_n == 1'b0)));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = (((icmp_ln94_reg_220 == 1'd0) & (m_axi_gmem1_RVALID == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (outbuf_full_n == 1'b0)));
end

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state3_pp0_stage0_iter2 = ((icmp_ln94_reg_220 == 1'd0) & (m_axi_gmem1_RVALID == 1'b0));
end

always @ (*) begin
    ap_block_state4_pp0_stage0_iter3 = (outbuf_full_n == 1'b0);
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter1_stage0;

assign icmp_ln94_fu_131_p2 = ((i_fu_62 == select_ln94_cast_cast_reg_210) ? 1'b1 : 1'b0);

assign icmp_ln97_1_fu_151_p2 = ((i_fu_62 == zext_ln94_cast_reg_205) ? 1'b1 : 1'b0);

assign icmp_ln97_fu_145_p2 = (($signed(paralleltostreamwithburst_ap_uint_ap_uint_int_hls_stream_m2s_len_fu_66) < $signed(32'd17)) ? 1'b1 : 1'b0);

assign m_axi_gmem1_ARADDR = 64'd0;

assign m_axi_gmem1_ARBURST = 2'd0;

assign m_axi_gmem1_ARCACHE = 4'd0;

assign m_axi_gmem1_ARID = 1'd0;

assign m_axi_gmem1_ARLEN = 32'd0;

assign m_axi_gmem1_ARLOCK = 2'd0;

assign m_axi_gmem1_ARPROT = 3'd0;

assign m_axi_gmem1_ARQOS = 4'd0;

assign m_axi_gmem1_ARREGION = 4'd0;

assign m_axi_gmem1_ARSIZE = 3'd0;

assign m_axi_gmem1_ARUSER = 1'd0;

assign m_axi_gmem1_ARVALID = 1'b0;

assign m_axi_gmem1_AWADDR = 64'd0;

assign m_axi_gmem1_AWBURST = 2'd0;

assign m_axi_gmem1_AWCACHE = 4'd0;

assign m_axi_gmem1_AWID = 1'd0;

assign m_axi_gmem1_AWLEN = 32'd0;

assign m_axi_gmem1_AWLOCK = 2'd0;

assign m_axi_gmem1_AWPROT = 3'd0;

assign m_axi_gmem1_AWQOS = 4'd0;

assign m_axi_gmem1_AWREGION = 4'd0;

assign m_axi_gmem1_AWSIZE = 3'd0;

assign m_axi_gmem1_AWUSER = 1'd0;

assign m_axi_gmem1_AWVALID = 1'b0;

assign m_axi_gmem1_BREADY = 1'b0;

assign m_axi_gmem1_WDATA = 32'd0;

assign m_axi_gmem1_WID = 1'd0;

assign m_axi_gmem1_WLAST = 1'b0;

assign m_axi_gmem1_WSTRB = 4'd0;

assign m_axi_gmem1_WUSER = 1'd0;

assign m_axi_gmem1_WVALID = 1'b0;

assign out_val_last_V_fu_156_p2 = (icmp_ln97_fu_145_p2 & icmp_ln97_1_fu_151_p2);

assign outbuf_din = {{out_val_last_V_reg_224_pp0_iter2_reg}, {out_val_data_filed_V_reg_229}};

assign select_ln94_cast_cast_fu_110_p1 = $signed(select_ln94_cast);

assign zext_ln94_cast_fu_106_p1 = zext_ln94;

always @ (posedge ap_clk) begin
    zext_ln94_cast_reg_205[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
end

endmodule //userdma_paralleltostreamwithburst_Pipeline_VITIS_LOOP_94_2
