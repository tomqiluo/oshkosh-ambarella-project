--[[

Copyright (c) 2018 Ambarella International LP

This file and its contents ("Software") are protected by intellectual
property rights including, without limitation, U.S. and/or foreign
copyrights. This Software is also the confidential and proprietary
information of Ambarella International LP and its licensors. You may not use, reproduce,
disclose, distribute, modify, or otherwise prepare derivative works of this
Software or any portion thereof except pursuant to a signed license agreement
or nondisclosure agreement with Ambarella International LP or its authorized affiliates.
In the absence of such an agreement, you agree to promptly notify and return
this Software to Ambarella International LP.

This file includes sample code and is only for internal testing and evaluation.  If you
distribute this sample code (whether in source, object, or binary code form), it will be
without any warranty or indemnity protection from Ambarella International LP or its affiliates.

THIS SOFTWARE IS PROVIDED "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES,
INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF NON-INFRINGEMENT,
MERCHANTABILITY, AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
IN NO EVENT SHALL AMBARELLA INTERNATIONAL LP OR ITS AFFILIATES BE LIABLE FOR ANY DIRECT,
INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
LOSS OF USE, DATA, OR PROFITS; COMPUTER FAILURE OR MALFUNCTION; OR BUSINESS
INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
POSSIBILITY OF SUCH DAMAGE.

--]]

vsrc_0 = {
        vsrc_id = 0,
        mode = "3840x2160",
        hdr_mode = "linear", -- options: "linear", "2x" or "3x"
        fps = 30,
        bits= 0,
}

chan_0 = {
        id = 0,
        vsrc = vsrc_0,
        vsrc_ctx = 0,
        img_stats_src_chan = "chan_0",
        sensor_ctrl = 1,
        max_padding_width = 0,
        idsp_fps = 0,
        lens_warp = 0,
        max_main_input_width = 0, -- 0: VIN raw width
        mctf_cmpr = 1,
        c2y_burst_tile = 1,
        extra_downscale = 0,
        main = {
                max_output = {0, 0}, -- output width
                input      = {0, 0, 0, 0}, -- full VIN
                output     = {0, 0, 3840, 2160},
        },
        second = {
                max_output = {0, 0}, -- output width
                input      = {0, 0, 3840, 2160}, -- full main
                output     = {0, 0, 1920, 1072},
        },
        third = {
                max_output = {0, 0}, -- output width
                input      = {0, 0, 3840, 2160}, -- full main
                output     = {0, 0, 3840, 2160},
        },
        fourth = {
                max_output = {0, 0},
                input      = {0, 0, 3840, 2160},
                output     = {0, 0, 1920, 1072},
        },
        fifth = {
                max_output = {0, 0},
                input      = {0, 0, 3840, 2160}, -- full main
                output     = {0, 0, 1920, 1072},
        },
        pyramid = {
                input_buf_id = 0,       -- 0: Main, 1: Second, 2: Third, 3: Fourth, 4: Fifth
                scale_type = 0,         -- 0: 1/sqrt(2); 1: 1/2; 2: Arbitrary size
                buf_addr = 0x0,
                buf_size = 0x0,
                manual_feed = 0,
                item_num = 0,
                layer_map = 0x00,
                layers = {
                        {
                                crop_win = {0, 0, 0 ,0},
                        },
                        {
                                crop_win = {0, 0, 0 ,0},
                        },
                        {
                                crop_win = {0, 0, 0 ,0},
                        },
                        {
                                crop_win = {0, 0, 0 ,0},
                        },
                        {
                                crop_win = {0, 0, 0 ,0},
                        },
                        {
                                crop_win = {0, 0, 0 ,0},
                        },
                        {
                                crop_win = {0, 0, 0 ,0},
                        },
                },
        },
}

chan_1 = {
        id = 1,
        vsrc = vsrc_0,
        vsrc_ctx = 0,
        img_stats_src_chan = "chan_0",
        sensor_ctrl = 0,
        max_padding_width = 0,
        idsp_fps = 0,
        lens_warp = 0,
        max_main_input_width = 0, -- 0: VIN raw width
        mctf_cmpr = 1,
        c2y_burst_tile = 1,
        extra_downscale = 0,
        main = {
                max_output = {0, 0}, -- output width
                input      = {0, 0, 0, 0}, -- full VIN
                output     = {0, 0, 3840, 2160},
        },
        second = {
                max_output = {0, 0}, -- output width
                input      = {0, 0, 3840, 2160}, -- full main
                output     = {0, 1072, 1920, 1072},
        },
        third = {
                max_output = {0, 0}, -- output width
                input      = {0, 0, 3840, 2160}, -- full main
                output     = {0, 0, 3840, 2160},
        },
        fourth = {
                max_output = {0, 0},
                input      = {0, 0, 3840, 2160},
                output     = {1200, 0, 720, 480},
        },
        fifth = {
                max_output = {0, 0},
                input      = {0, 0, 3840, 2160}, -- full main
                output     = {1920, 0, 1920, 1072},
        },
        pyramid = {
                input_buf_id = 0,       -- 0: Main, 1: Second, 2: Third, 3: Fourth, 4: Fifth
                scale_type = 0,         -- 0: 1/sqrt(2); 1: 1/2; 2: Arbitrary size
                buf_addr = 0x0,
                buf_size = 0x0,
                manual_feed = 0,
                item_num = 0,
                layer_map = 0x00,
                layers = {
                        {
                                crop_win = {0, 0, 0 ,0},
                        },
                        {
                                crop_win = {0, 0, 0 ,0},
                        },
                        {
                                crop_win = {0, 0, 0 ,0},
                        },
                        {
                                crop_win = {0, 0, 0 ,0},
                        },
                        {
                                crop_win = {0, 0, 0 ,0},
                        },
                        {
                                crop_win = {0, 0, 0 ,0},
                        },
                        {
                                crop_win = {0, 0, 0 ,0},
                        },
                },
        },
}

stream_0 = {
        id = 0,
        max_size = {3840, 2160},
        max_M = 1,
        fast_seek_enable = 0,
        two_ref_enable = 0,
        max_svct_layers_minus_1 = 0,
        max_num_minus_1_ltrs = 0,
        codec_enable = 0, -- 0: H264/H265/MJPEG; 1: H265/MJPEG; 2: H264/MJPEG; 3: MJPEG
}

stream_1 = {
        id = 1,
        max_size = {3840, 2160},
        max_M = 1,
        fast_seek_enable = 0,
        two_ref_enable = 0,
        max_svct_layers_minus_1 = 0,
        max_num_minus_1_ltrs = 0,
        codec_enable = 0, -- 0: H264/H265/MJPEG; 1: H265/MJPEG; 2: H264/MJPEG; 3: MJPEG
}

stream_2 = {
        id = 2,
        max_size = {3840, 2160},
        max_M = 1,
        fast_seek_enable = 0,
        two_ref_enable = 0,
        max_svct_layers_minus_1 = 0,
        max_num_minus_1_ltrs = 0,
        codec_enable = 3, -- 0: H264/H265/MJPEG; 1: H265/MJPEG; 2: H264/MJPEG; 3: MJPEG
}

stream_3 = {
        id = 3,
        max_size = {3840, 2160},
        max_M = 1,
        fast_seek_enable = 0,
        two_ref_enable = 0,
        max_svct_layers_minus_1 = 0,
        max_num_minus_1_ltrs = 0,
        codec_enable = 3, -- 0: H264/H265/MJPEG; 1: H265/MJPEG; 2: H264/MJPEG; 3: MJPEG
}

stream_4 = {
        id = 4,
        max_size = {3840, 1072},
        max_M = 1,
        fast_seek_enable = 0,
        two_ref_enable = 0,
        max_svct_layers_minus_1 = 0,
        max_num_minus_1_ltrs = 0,
        codec_enable = 0, -- 0: H264/H265/MJPEG; 1: H265/MJPEG; 2: H264/MJPEG; 3: MJPEG
}

stream_5 = {
        id = 5,
        max_size = {1920, 2144},
        max_M = 1,
        fast_seek_enable = 0,
        two_ref_enable = 0,
        max_svct_layers_minus_1 = 0,
        max_num_minus_1_ltrs = 0,
        codec_enable = 0, -- 0: H264/H265/MJPEG; 1: H265/MJPEG; 2: H264/MJPEG; 3: MJPEG
}

stream_6 = {
        id = 6,
        max_size = {1920, 1072},
        max_M = 1,
        fast_seek_enable = 0,
        two_ref_enable = 0,
        max_svct_layers_minus_1 = 0,
        max_num_minus_1_ltrs = 0,
        codec_enable = 0, -- 0: H264/H265/MJPEG; 1: H265/MJPEG; 2: H264/MJPEG; 3: MJPEG
}

_resource_config_ = {
        version = 1,
        log_level = 0, -- 0: error; 1: warning; 2: info; 3: debug
        channels = {
                chan_0,
                chan_1,
        },
        chan_groups = {{"chan_0", "chan_1"},},
        canvas = {
                {
                        type = "encode",
                        size = {3840, 2160}, -- min size to contain source buffers
                        source = {"chan_0.main",},
                        extra_dram_buf = 0,
                },
                {
                        type = "encode",
                        size = {3840, 2160}, -- min size to contain source buffers
                        source = {"chan_1.main",},
                        extra_dram_buf = 0,
                },
                {
                        type = "encode",
                        size = {3840, 2160}, -- min size to contain source buffers
                        source = {"chan_0.third",},
                        extra_dram_buf = 0,
                },
                {
                        type = "encode",
                        size = {3840, 2160}, -- min size to contain source buffers
                        source = {"chan_1.third",},
                        extra_dram_buf = 0,
                },
                {
                        type = "encode",
                        size = {3840, 1072}, -- min size to contain source buffers
                        source = {"chan_0.fifth", "chan_1.fifth"},
                        extra_dram_buf = 0,
                },
                {
                        type = "encode",
                        size = {1920, 2144}, -- min size to contain source buffers
                        source = {"chan_0.second", "chan_1.second"},
                        extra_dram_buf = 0,
                },
                {
                        type = "encode",
                        size = {1920, 1072}, -- min size to contain source buffers
                        source = {"chan_0.fourth", "chan_1.fourth"},
                        extra_dram_buf = 0,
                        enable_order = 1,
                },
        },
        streams = {
                stream_0,
                stream_1,
                stream_2,
                stream_3,
                stream_4,
                stream_5,
                stream_6,
        },
}

return _resource_config_