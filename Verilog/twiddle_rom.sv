module twiddle_rom (
    input  [11:0] addr,
    output reg signed [15:0] twiddle_real,
    output reg signed [15:0] twiddle_imag
);
    always @(*) begin
        case (addr)
            12'd0   : begin twiddle_real = 16'sd32767; twiddle_imag = 16'sd0; end
            12'd1   : begin twiddle_real = 16'sd32767; twiddle_imag = -(16'sd51); end
            12'd2   : begin twiddle_real = 16'sd32767; twiddle_imag = -(16'sd101); end
            12'd3   : begin twiddle_real = 16'sd32767; twiddle_imag = -(16'sd151); end
            12'd4   : begin twiddle_real = 16'sd32767; twiddle_imag = -(16'sd202); end
            12'd5   : begin twiddle_real = 16'sd32767; twiddle_imag = -(16'sd252); end
            12'd6   : begin twiddle_real = 16'sd32766; twiddle_imag = -(16'sd302); end
            12'd7   : begin twiddle_real = 16'sd32766; twiddle_imag = -(16'sd352); end
            12'd8   : begin twiddle_real = 16'sd32765; twiddle_imag = -(16'sd403); end
            12'd9   : begin twiddle_real = 16'sd32764; twiddle_imag = -(16'sd453); end
            12'd10  : begin twiddle_real = 16'sd32764; twiddle_imag = -(16'sd503); end
            12'd11  : begin twiddle_real = 16'sd32763; twiddle_imag = -(16'sd553); end
            12'd12  : begin twiddle_real = 16'sd32762; twiddle_imag = -(16'sd604); end
            12'd13  : begin twiddle_real = 16'sd32761; twiddle_imag = -(16'sd654); end
            12'd14  : begin twiddle_real = 16'sd32760; twiddle_imag = -(16'sd704); end
            12'd15  : begin twiddle_real = 16'sd32759; twiddle_imag = -(16'sd754); end
            12'd16  : begin twiddle_real = 16'sd32758; twiddle_imag = -(16'sd805); end
            12'd17  : begin twiddle_real = 16'sd32756; twiddle_imag = -(16'sd855); end
            12'd18  : begin twiddle_real = 16'sd32755; twiddle_imag = -(16'sd905); end
            12'd19  : begin twiddle_real = 16'sd32754; twiddle_imag = -(16'sd955); end
            12'd20  : begin twiddle_real = 16'sd32752; twiddle_imag = -(16'sd1006); end
            12'd21  : begin twiddle_real = 16'sd32750; twiddle_imag = -(16'sd1056); end
            12'd22  : begin twiddle_real = 16'sd32749; twiddle_imag = -(16'sd1106); end
            12'd23  : begin twiddle_real = 16'sd32747; twiddle_imag = -(16'sd1156); end
            12'd24  : begin twiddle_real = 16'sd32745; twiddle_imag = -(16'sd1207); end
            12'd25  : begin twiddle_real = 16'sd32743; twiddle_imag = -(16'sd1257); end
            12'd26  : begin twiddle_real = 16'sd32741; twiddle_imag = -(16'sd1307); end
            12'd27  : begin twiddle_real = 16'sd32739; twiddle_imag = -(16'sd1357); end
            12'd28  : begin twiddle_real = 16'sd32737; twiddle_imag = -(16'sd1408); end
            12'd29  : begin twiddle_real = 16'sd32735; twiddle_imag = -(16'sd1458); end
            12'd30  : begin twiddle_real = 16'sd32733; twiddle_imag = -(16'sd1508); end
            12'd31  : begin twiddle_real = 16'sd32730; twiddle_imag = -(16'sd1558); end
            12'd32  : begin twiddle_real = 16'sd32728; twiddle_imag = -(16'sd1608); end
            12'd33  : begin twiddle_real = 16'sd32726; twiddle_imag = -(16'sd1659); end
            12'd34  : begin twiddle_real = 16'sd32723; twiddle_imag = -(16'sd1709); end
            12'd35  : begin twiddle_real = 16'sd32720; twiddle_imag = -(16'sd1759); end
            12'd36  : begin twiddle_real = 16'sd32718; twiddle_imag = -(16'sd1809); end
            12'd37  : begin twiddle_real = 16'sd32715; twiddle_imag = -(16'sd1859); end
            12'd38  : begin twiddle_real = 16'sd32712; twiddle_imag = -(16'sd1910); end
            12'd39  : begin twiddle_real = 16'sd32709; twiddle_imag = -(16'sd1960); end
            12'd40  : begin twiddle_real = 16'sd32706; twiddle_imag = -(16'sd2010); end
            12'd41  : begin twiddle_real = 16'sd32703; twiddle_imag = -(16'sd2060); end
            12'd42  : begin twiddle_real = 16'sd32700; twiddle_imag = -(16'sd2110); end
            12'd43  : begin twiddle_real = 16'sd32696; twiddle_imag = -(16'sd2160); end
            12'd44  : begin twiddle_real = 16'sd32693; twiddle_imag = -(16'sd2211); end
            12'd45  : begin twiddle_real = 16'sd32689; twiddle_imag = -(16'sd2261); end
            12'd46  : begin twiddle_real = 16'sd32686; twiddle_imag = -(16'sd2311); end
            12'd47  : begin twiddle_real = 16'sd32682; twiddle_imag = -(16'sd2361); end
            12'd48  : begin twiddle_real = 16'sd32679; twiddle_imag = -(16'sd2411); end
            12'd49  : begin twiddle_real = 16'sd32675; twiddle_imag = -(16'sd2461); end
            12'd50  : begin twiddle_real = 16'sd32671; twiddle_imag = -(16'sd2511); end
            12'd51  : begin twiddle_real = 16'sd32667; twiddle_imag = -(16'sd2561); end
            12'd52  : begin twiddle_real = 16'sd32663; twiddle_imag = -(16'sd2612); end
            12'd53  : begin twiddle_real = 16'sd32659; twiddle_imag = -(16'sd2662); end
            12'd54  : begin twiddle_real = 16'sd32655; twiddle_imag = -(16'sd2712); end
            12'd55  : begin twiddle_real = 16'sd32651; twiddle_imag = -(16'sd2762); end
            12'd56  : begin twiddle_real = 16'sd32647; twiddle_imag = -(16'sd2812); end
            12'd57  : begin twiddle_real = 16'sd32642; twiddle_imag = -(16'sd2862); end
            12'd58  : begin twiddle_real = 16'sd32638; twiddle_imag = -(16'sd2912); end
            12'd59  : begin twiddle_real = 16'sd32633; twiddle_imag = -(16'sd2962); end
            12'd60  : begin twiddle_real = 16'sd32629; twiddle_imag = -(16'sd3012); end
            12'd61  : begin twiddle_real = 16'sd32624; twiddle_imag = -(16'sd3062); end
            12'd62  : begin twiddle_real = 16'sd32619; twiddle_imag = -(16'sd3112); end
            12'd63  : begin twiddle_real = 16'sd32615; twiddle_imag = -(16'sd3162); end
            12'd64  : begin twiddle_real = 16'sd32610; twiddle_imag = -(16'sd3212); end
            12'd65  : begin twiddle_real = 16'sd32605; twiddle_imag = -(16'sd3262); end
            12'd66  : begin twiddle_real = 16'sd32600; twiddle_imag = -(16'sd3312); end
            12'd67  : begin twiddle_real = 16'sd32595; twiddle_imag = -(16'sd3362); end
            12'd68  : begin twiddle_real = 16'sd32589; twiddle_imag = -(16'sd3412); end
            12'd69  : begin twiddle_real = 16'sd32584; twiddle_imag = -(16'sd3462); end
            12'd70  : begin twiddle_real = 16'sd32579; twiddle_imag = -(16'sd3512); end
            12'd71  : begin twiddle_real = 16'sd32573; twiddle_imag = -(16'sd3562); end
            12'd72  : begin twiddle_real = 16'sd32568; twiddle_imag = -(16'sd3612); end
            12'd73  : begin twiddle_real = 16'sd32562; twiddle_imag = -(16'sd3662); end
            12'd74  : begin twiddle_real = 16'sd32557; twiddle_imag = -(16'sd3712); end
            12'd75  : begin twiddle_real = 16'sd32551; twiddle_imag = -(16'sd3762); end
            12'd76  : begin twiddle_real = 16'sd32545; twiddle_imag = -(16'sd3812); end
            12'd77  : begin twiddle_real = 16'sd32539; twiddle_imag = -(16'sd3862); end
            12'd78  : begin twiddle_real = 16'sd32533; twiddle_imag = -(16'sd3912); end
            12'd79  : begin twiddle_real = 16'sd32527; twiddle_imag = -(16'sd3962); end
            12'd80  : begin twiddle_real = 16'sd32521; twiddle_imag = -(16'sd4012); end
            12'd81  : begin twiddle_real = 16'sd32515; twiddle_imag = -(16'sd4062); end
            12'd82  : begin twiddle_real = 16'sd32509; twiddle_imag = -(16'sd4111); end
            12'd83  : begin twiddle_real = 16'sd32502; twiddle_imag = -(16'sd4161); end
            12'd84  : begin twiddle_real = 16'sd32496; twiddle_imag = -(16'sd4211); end
            12'd85  : begin twiddle_real = 16'sd32489; twiddle_imag = -(16'sd4261); end
            12'd86  : begin twiddle_real = 16'sd32483; twiddle_imag = -(16'sd4311); end
            12'd87  : begin twiddle_real = 16'sd32476; twiddle_imag = -(16'sd4361); end
            12'd88  : begin twiddle_real = 16'sd32469; twiddle_imag = -(16'sd4410); end
            12'd89  : begin twiddle_real = 16'sd32463; twiddle_imag = -(16'sd4460); end
            12'd90  : begin twiddle_real = 16'sd32456; twiddle_imag = -(16'sd4510); end
            12'd91  : begin twiddle_real = 16'sd32449; twiddle_imag = -(16'sd4560); end
            12'd92  : begin twiddle_real = 16'sd32442; twiddle_imag = -(16'sd4610); end
            12'd93  : begin twiddle_real = 16'sd32435; twiddle_imag = -(16'sd4659); end
            12'd94  : begin twiddle_real = 16'sd32427; twiddle_imag = -(16'sd4709); end
            12'd95  : begin twiddle_real = 16'sd32420; twiddle_imag = -(16'sd4759); end
            12'd96  : begin twiddle_real = 16'sd32413; twiddle_imag = -(16'sd4809); end
            12'd97  : begin twiddle_real = 16'sd32405; twiddle_imag = -(16'sd4858); end
            12'd98  : begin twiddle_real = 16'sd32398; twiddle_imag = -(16'sd4908); end
            12'd99  : begin twiddle_real = 16'sd32390; twiddle_imag = -(16'sd4958); end
            12'd100 : begin twiddle_real = 16'sd32383; twiddle_imag = -(16'sd5007); end
            12'd101 : begin twiddle_real = 16'sd32375; twiddle_imag = -(16'sd5057); end
            12'd102 : begin twiddle_real = 16'sd32367; twiddle_imag = -(16'sd5107); end
            12'd103 : begin twiddle_real = 16'sd32359; twiddle_imag = -(16'sd5156); end
            12'd104 : begin twiddle_real = 16'sd32351; twiddle_imag = -(16'sd5206); end
            12'd105 : begin twiddle_real = 16'sd32343; twiddle_imag = -(16'sd5256); end
            12'd106 : begin twiddle_real = 16'sd32335; twiddle_imag = -(16'sd5305); end
            12'd107 : begin twiddle_real = 16'sd32327; twiddle_imag = -(16'sd5355); end
            12'd108 : begin twiddle_real = 16'sd32319; twiddle_imag = -(16'sd5404); end
            12'd109 : begin twiddle_real = 16'sd32311; twiddle_imag = -(16'sd5454); end
            12'd110 : begin twiddle_real = 16'sd32302; twiddle_imag = -(16'sd5504); end
            12'd111 : begin twiddle_real = 16'sd32294; twiddle_imag = -(16'sd5553); end
            12'd112 : begin twiddle_real = 16'sd32285; twiddle_imag = -(16'sd5603); end
            12'd113 : begin twiddle_real = 16'sd32276; twiddle_imag = -(16'sd5652); end
            12'd114 : begin twiddle_real = 16'sd32268; twiddle_imag = -(16'sd5702); end
            12'd115 : begin twiddle_real = 16'sd32259; twiddle_imag = -(16'sd5751); end
            12'd116 : begin twiddle_real = 16'sd32250; twiddle_imag = -(16'sd5801); end
            12'd117 : begin twiddle_real = 16'sd32241; twiddle_imag = -(16'sd5850); end
            12'd118 : begin twiddle_real = 16'sd32232; twiddle_imag = -(16'sd5899); end
            12'd119 : begin twiddle_real = 16'sd32223; twiddle_imag = -(16'sd5949); end
            12'd120 : begin twiddle_real = 16'sd32214; twiddle_imag = -(16'sd5998); end
            12'd121 : begin twiddle_real = 16'sd32205; twiddle_imag = -(16'sd6048); end
            12'd122 : begin twiddle_real = 16'sd32195; twiddle_imag = -(16'sd6097); end
            12'd123 : begin twiddle_real = 16'sd32186; twiddle_imag = -(16'sd6147); end
            12'd124 : begin twiddle_real = 16'sd32176; twiddle_imag = -(16'sd6196); end
            12'd125 : begin twiddle_real = 16'sd32167; twiddle_imag = -(16'sd6245); end
            12'd126 : begin twiddle_real = 16'sd32157; twiddle_imag = -(16'sd6295); end
            12'd127 : begin twiddle_real = 16'sd32148; twiddle_imag = -(16'sd6344); end
            12'd128 : begin twiddle_real = 16'sd32138; twiddle_imag = -(16'sd6393); end
            12'd129 : begin twiddle_real = 16'sd32128; twiddle_imag = -(16'sd6443); end
            12'd130 : begin twiddle_real = 16'sd32118; twiddle_imag = -(16'sd6492); end
            12'd131 : begin twiddle_real = 16'sd32108; twiddle_imag = -(16'sd6541); end
            12'd132 : begin twiddle_real = 16'sd32098; twiddle_imag = -(16'sd6590); end
            12'd133 : begin twiddle_real = 16'sd32088; twiddle_imag = -(16'sd6640); end
            12'd134 : begin twiddle_real = 16'sd32078; twiddle_imag = -(16'sd6689); end
            12'd135 : begin twiddle_real = 16'sd32067; twiddle_imag = -(16'sd6738); end
            12'd136 : begin twiddle_real = 16'sd32057; twiddle_imag = -(16'sd6787); end
            12'd137 : begin twiddle_real = 16'sd32047; twiddle_imag = -(16'sd6836); end
            12'd138 : begin twiddle_real = 16'sd32036; twiddle_imag = -(16'sd6885); end
            12'd139 : begin twiddle_real = 16'sd32025; twiddle_imag = -(16'sd6935); end
            12'd140 : begin twiddle_real = 16'sd32015; twiddle_imag = -(16'sd6984); end
            12'd141 : begin twiddle_real = 16'sd32004; twiddle_imag = -(16'sd7033); end
            12'd142 : begin twiddle_real = 16'sd31993; twiddle_imag = -(16'sd7082); end
            12'd143 : begin twiddle_real = 16'sd31982; twiddle_imag = -(16'sd7131); end
            12'd144 : begin twiddle_real = 16'sd31971; twiddle_imag = -(16'sd7180); end
            12'd145 : begin twiddle_real = 16'sd31960; twiddle_imag = -(16'sd7229); end
            12'd146 : begin twiddle_real = 16'sd31949; twiddle_imag = -(16'sd7278); end
            12'd147 : begin twiddle_real = 16'sd31938; twiddle_imag = -(16'sd7327); end
            12'd148 : begin twiddle_real = 16'sd31927; twiddle_imag = -(16'sd7376); end
            12'd149 : begin twiddle_real = 16'sd31915; twiddle_imag = -(16'sd7425); end
            12'd150 : begin twiddle_real = 16'sd31904; twiddle_imag = -(16'sd7474); end
            12'd151 : begin twiddle_real = 16'sd31892; twiddle_imag = -(16'sd7523); end
            12'd152 : begin twiddle_real = 16'sd31881; twiddle_imag = -(16'sd7572); end
            12'd153 : begin twiddle_real = 16'sd31869; twiddle_imag = -(16'sd7621); end
            12'd154 : begin twiddle_real = 16'sd31857; twiddle_imag = -(16'sd7670); end
            12'd155 : begin twiddle_real = 16'sd31846; twiddle_imag = -(16'sd7718); end
            12'd156 : begin twiddle_real = 16'sd31834; twiddle_imag = -(16'sd7767); end
            12'd157 : begin twiddle_real = 16'sd31822; twiddle_imag = -(16'sd7816); end
            12'd158 : begin twiddle_real = 16'sd31810; twiddle_imag = -(16'sd7865); end
            12'd159 : begin twiddle_real = 16'sd31798; twiddle_imag = -(16'sd7914); end
            12'd160 : begin twiddle_real = 16'sd31785; twiddle_imag = -(16'sd7962); end
            12'd161 : begin twiddle_real = 16'sd31773; twiddle_imag = -(16'sd8011); end
            12'd162 : begin twiddle_real = 16'sd31761; twiddle_imag = -(16'sd8060); end
            12'd163 : begin twiddle_real = 16'sd31749; twiddle_imag = -(16'sd8109); end
            12'd164 : begin twiddle_real = 16'sd31736; twiddle_imag = -(16'sd8157); end
            12'd165 : begin twiddle_real = 16'sd31723; twiddle_imag = -(16'sd8206); end
            12'd166 : begin twiddle_real = 16'sd31711; twiddle_imag = -(16'sd8255); end
            12'd167 : begin twiddle_real = 16'sd31698; twiddle_imag = -(16'sd8303); end
            12'd168 : begin twiddle_real = 16'sd31685; twiddle_imag = -(16'sd8352); end
            12'd169 : begin twiddle_real = 16'sd31673; twiddle_imag = -(16'sd8401); end
            12'd170 : begin twiddle_real = 16'sd31660; twiddle_imag = -(16'sd8449); end
            12'd171 : begin twiddle_real = 16'sd31647; twiddle_imag = -(16'sd8498); end
            12'd172 : begin twiddle_real = 16'sd31634; twiddle_imag = -(16'sd8546); end
            12'd173 : begin twiddle_real = 16'sd31620; twiddle_imag = -(16'sd8595); end
            12'd174 : begin twiddle_real = 16'sd31607; twiddle_imag = -(16'sd8643); end
            12'd175 : begin twiddle_real = 16'sd31594; twiddle_imag = -(16'sd8692); end
            12'd176 : begin twiddle_real = 16'sd31581; twiddle_imag = -(16'sd8740); end
            12'd177 : begin twiddle_real = 16'sd31567; twiddle_imag = -(16'sd8789); end
            12'd178 : begin twiddle_real = 16'sd31554; twiddle_imag = -(16'sd8837); end
            12'd179 : begin twiddle_real = 16'sd31540; twiddle_imag = -(16'sd8885); end
            12'd180 : begin twiddle_real = 16'sd31526; twiddle_imag = -(16'sd8934); end
            12'd181 : begin twiddle_real = 16'sd31513; twiddle_imag = -(16'sd8982); end
            12'd182 : begin twiddle_real = 16'sd31499; twiddle_imag = -(16'sd9030); end
            12'd183 : begin twiddle_real = 16'sd31485; twiddle_imag = -(16'sd9079); end
            12'd184 : begin twiddle_real = 16'sd31471; twiddle_imag = -(16'sd9127); end
            12'd185 : begin twiddle_real = 16'sd31457; twiddle_imag = -(16'sd9175); end
            12'd186 : begin twiddle_real = 16'sd31443; twiddle_imag = -(16'sd9224); end
            12'd187 : begin twiddle_real = 16'sd31429; twiddle_imag = -(16'sd9272); end
            12'd188 : begin twiddle_real = 16'sd31414; twiddle_imag = -(16'sd9320); end
            12'd189 : begin twiddle_real = 16'sd31400; twiddle_imag = -(16'sd9368); end
            12'd190 : begin twiddle_real = 16'sd31386; twiddle_imag = -(16'sd9416); end
            12'd191 : begin twiddle_real = 16'sd31371; twiddle_imag = -(16'sd9464); end
            12'd192 : begin twiddle_real = 16'sd31357; twiddle_imag = -(16'sd9513); end
            12'd193 : begin twiddle_real = 16'sd31342; twiddle_imag = -(16'sd9561); end
            12'd194 : begin twiddle_real = 16'sd31327; twiddle_imag = -(16'sd9609); end
            12'd195 : begin twiddle_real = 16'sd31312; twiddle_imag = -(16'sd9657); end
            12'd196 : begin twiddle_real = 16'sd31298; twiddle_imag = -(16'sd9705); end
            12'd197 : begin twiddle_real = 16'sd31283; twiddle_imag = -(16'sd9753); end
            12'd198 : begin twiddle_real = 16'sd31268; twiddle_imag = -(16'sd9801); end
            12'd199 : begin twiddle_real = 16'sd31253; twiddle_imag = -(16'sd9849); end
            12'd200 : begin twiddle_real = 16'sd31237; twiddle_imag = -(16'sd9897); end
            12'd201 : begin twiddle_real = 16'sd31222; twiddle_imag = -(16'sd9945); end
            12'd202 : begin twiddle_real = 16'sd31207; twiddle_imag = -(16'sd9992); end
            12'd203 : begin twiddle_real = 16'sd31192; twiddle_imag = -(16'sd10040); end
            12'd204 : begin twiddle_real = 16'sd31176; twiddle_imag = -(16'sd10088); end
            12'd205 : begin twiddle_real = 16'sd31161; twiddle_imag = -(16'sd10136); end
            12'd206 : begin twiddle_real = 16'sd31145; twiddle_imag = -(16'sd10184); end
            12'd207 : begin twiddle_real = 16'sd31129; twiddle_imag = -(16'sd10231); end
            12'd208 : begin twiddle_real = 16'sd31114; twiddle_imag = -(16'sd10279); end
            12'd209 : begin twiddle_real = 16'sd31098; twiddle_imag = -(16'sd10327); end
            12'd210 : begin twiddle_real = 16'sd31082; twiddle_imag = -(16'sd10375); end
            12'd211 : begin twiddle_real = 16'sd31066; twiddle_imag = -(16'sd10422); end
            12'd212 : begin twiddle_real = 16'sd31050; twiddle_imag = -(16'sd10470); end
            12'd213 : begin twiddle_real = 16'sd31034; twiddle_imag = -(16'sd10518); end
            12'd214 : begin twiddle_real = 16'sd31018; twiddle_imag = -(16'sd10565); end
            12'd215 : begin twiddle_real = 16'sd31001; twiddle_imag = -(16'sd10613); end
            12'd216 : begin twiddle_real = 16'sd30985; twiddle_imag = -(16'sd10660); end
            12'd217 : begin twiddle_real = 16'sd30969; twiddle_imag = -(16'sd10708); end
            12'd218 : begin twiddle_real = 16'sd30952; twiddle_imag = -(16'sd10755); end
            12'd219 : begin twiddle_real = 16'sd30936; twiddle_imag = -(16'sd10803); end
            12'd220 : begin twiddle_real = 16'sd30919; twiddle_imag = -(16'sd10850); end
            12'd221 : begin twiddle_real = 16'sd30902; twiddle_imag = -(16'sd10898); end
            12'd222 : begin twiddle_real = 16'sd30886; twiddle_imag = -(16'sd10945); end
            12'd223 : begin twiddle_real = 16'sd30869; twiddle_imag = -(16'sd10992); end
            12'd224 : begin twiddle_real = 16'sd30852; twiddle_imag = -(16'sd11040); end
            12'd225 : begin twiddle_real = 16'sd30835; twiddle_imag = -(16'sd11087); end
            12'd226 : begin twiddle_real = 16'sd30818; twiddle_imag = -(16'sd11134); end
            12'd227 : begin twiddle_real = 16'sd30801; twiddle_imag = -(16'sd11182); end
            12'd228 : begin twiddle_real = 16'sd30784; twiddle_imag = -(16'sd11229); end
            12'd229 : begin twiddle_real = 16'sd30766; twiddle_imag = -(16'sd11276); end
            12'd230 : begin twiddle_real = 16'sd30749; twiddle_imag = -(16'sd11323); end
            12'd231 : begin twiddle_real = 16'sd30732; twiddle_imag = -(16'sd11370); end
            12'd232 : begin twiddle_real = 16'sd30714; twiddle_imag = -(16'sd11417); end
            12'd233 : begin twiddle_real = 16'sd30697; twiddle_imag = -(16'sd11465); end
            12'd234 : begin twiddle_real = 16'sd30679; twiddle_imag = -(16'sd11512); end
            12'd235 : begin twiddle_real = 16'sd30661; twiddle_imag = -(16'sd11559); end
            12'd236 : begin twiddle_real = 16'sd30644; twiddle_imag = -(16'sd11606); end
            12'd237 : begin twiddle_real = 16'sd30626; twiddle_imag = -(16'sd11653); end
            12'd238 : begin twiddle_real = 16'sd30608; twiddle_imag = -(16'sd11700); end
            12'd239 : begin twiddle_real = 16'sd30590; twiddle_imag = -(16'sd11747); end
            12'd240 : begin twiddle_real = 16'sd30572; twiddle_imag = -(16'sd11794); end
            12'd241 : begin twiddle_real = 16'sd30554; twiddle_imag = -(16'sd11840); end
            12'd242 : begin twiddle_real = 16'sd30535; twiddle_imag = -(16'sd11887); end
            12'd243 : begin twiddle_real = 16'sd30517; twiddle_imag = -(16'sd11934); end
            12'd244 : begin twiddle_real = 16'sd30499; twiddle_imag = -(16'sd11981); end
            12'd245 : begin twiddle_real = 16'sd30480; twiddle_imag = -(16'sd12028); end
            12'd246 : begin twiddle_real = 16'sd30462; twiddle_imag = -(16'sd12074); end
            12'd247 : begin twiddle_real = 16'sd30443; twiddle_imag = -(16'sd12121); end
            12'd248 : begin twiddle_real = 16'sd30425; twiddle_imag = -(16'sd12168); end
            12'd249 : begin twiddle_real = 16'sd30406; twiddle_imag = -(16'sd12214); end
            12'd250 : begin twiddle_real = 16'sd30387; twiddle_imag = -(16'sd12261); end
            12'd251 : begin twiddle_real = 16'sd30368; twiddle_imag = -(16'sd12308); end
            12'd252 : begin twiddle_real = 16'sd30350; twiddle_imag = -(16'sd12354); end
            12'd253 : begin twiddle_real = 16'sd30331; twiddle_imag = -(16'sd12401); end
            12'd254 : begin twiddle_real = 16'sd30312; twiddle_imag = -(16'sd12447); end
            12'd255 : begin twiddle_real = 16'sd30292; twiddle_imag = -(16'sd12494); end
            12'd256 : begin twiddle_real = 16'sd30273; twiddle_imag = -(16'sd12540); end
            12'd257 : begin twiddle_real = 16'sd30254; twiddle_imag = -(16'sd12587); end
            12'd258 : begin twiddle_real = 16'sd30235; twiddle_imag = -(16'sd12633); end
            12'd259 : begin twiddle_real = 16'sd30215; twiddle_imag = -(16'sd12679); end
            12'd260 : begin twiddle_real = 16'sd30196; twiddle_imag = -(16'sd12726); end
            12'd261 : begin twiddle_real = 16'sd30176; twiddle_imag = -(16'sd12772); end
            12'd262 : begin twiddle_real = 16'sd30156; twiddle_imag = -(16'sd12818); end
            12'd263 : begin twiddle_real = 16'sd30137; twiddle_imag = -(16'sd12865); end
            12'd264 : begin twiddle_real = 16'sd30117; twiddle_imag = -(16'sd12911); end
            12'd265 : begin twiddle_real = 16'sd30097; twiddle_imag = -(16'sd12957); end
            12'd266 : begin twiddle_real = 16'sd30077; twiddle_imag = -(16'sd13003); end
            12'd267 : begin twiddle_real = 16'sd30057; twiddle_imag = -(16'sd13049); end
            12'd268 : begin twiddle_real = 16'sd30037; twiddle_imag = -(16'sd13095); end
            12'd269 : begin twiddle_real = 16'sd30017; twiddle_imag = -(16'sd13141); end
            12'd270 : begin twiddle_real = 16'sd29997; twiddle_imag = -(16'sd13187); end
            12'd271 : begin twiddle_real = 16'sd29977; twiddle_imag = -(16'sd13233); end
            12'd272 : begin twiddle_real = 16'sd29956; twiddle_imag = -(16'sd13279); end
            12'd273 : begin twiddle_real = 16'sd29936; twiddle_imag = -(16'sd13325); end
            12'd274 : begin twiddle_real = 16'sd29915; twiddle_imag = -(16'sd13371); end
            12'd275 : begin twiddle_real = 16'sd29895; twiddle_imag = -(16'sd13417); end
            12'd276 : begin twiddle_real = 16'sd29874; twiddle_imag = -(16'sd13463); end
            12'd277 : begin twiddle_real = 16'sd29854; twiddle_imag = -(16'sd13509); end
            12'd278 : begin twiddle_real = 16'sd29833; twiddle_imag = -(16'sd13555); end
            12'd279 : begin twiddle_real = 16'sd29812; twiddle_imag = -(16'sd13600); end
            12'd280 : begin twiddle_real = 16'sd29791; twiddle_imag = -(16'sd13646); end
            12'd281 : begin twiddle_real = 16'sd29770; twiddle_imag = -(16'sd13692); end
            12'd282 : begin twiddle_real = 16'sd29749; twiddle_imag = -(16'sd13737); end
            12'd283 : begin twiddle_real = 16'sd29728; twiddle_imag = -(16'sd13783); end
            12'd284 : begin twiddle_real = 16'sd29707; twiddle_imag = -(16'sd13829); end
            12'd285 : begin twiddle_real = 16'sd29686; twiddle_imag = -(16'sd13874); end
            12'd286 : begin twiddle_real = 16'sd29664; twiddle_imag = -(16'sd13920); end
            12'd287 : begin twiddle_real = 16'sd29643; twiddle_imag = -(16'sd13965); end
            12'd288 : begin twiddle_real = 16'sd29621; twiddle_imag = -(16'sd14011); end
            12'd289 : begin twiddle_real = 16'sd29600; twiddle_imag = -(16'sd14056); end
            12'd290 : begin twiddle_real = 16'sd29578; twiddle_imag = -(16'sd14101); end
            12'd291 : begin twiddle_real = 16'sd29557; twiddle_imag = -(16'sd14147); end
            12'd292 : begin twiddle_real = 16'sd29535; twiddle_imag = -(16'sd14192); end
            12'd293 : begin twiddle_real = 16'sd29513; twiddle_imag = -(16'sd14237); end
            12'd294 : begin twiddle_real = 16'sd29491; twiddle_imag = -(16'sd14283); end
            12'd295 : begin twiddle_real = 16'sd29469; twiddle_imag = -(16'sd14328); end
            12'd296 : begin twiddle_real = 16'sd29447; twiddle_imag = -(16'sd14373); end
            12'd297 : begin twiddle_real = 16'sd29425; twiddle_imag = -(16'sd14418); end
            12'd298 : begin twiddle_real = 16'sd29403; twiddle_imag = -(16'sd14463); end
            12'd299 : begin twiddle_real = 16'sd29381; twiddle_imag = -(16'sd14508); end
            12'd300 : begin twiddle_real = 16'sd29359; twiddle_imag = -(16'sd14553); end
            12'd301 : begin twiddle_real = 16'sd29336; twiddle_imag = -(16'sd14599); end
            12'd302 : begin twiddle_real = 16'sd29314; twiddle_imag = -(16'sd14643); end
            12'd303 : begin twiddle_real = 16'sd29291; twiddle_imag = -(16'sd14688); end
            12'd304 : begin twiddle_real = 16'sd29269; twiddle_imag = -(16'sd14733); end
            12'd305 : begin twiddle_real = 16'sd29246; twiddle_imag = -(16'sd14778); end
            12'd306 : begin twiddle_real = 16'sd29223; twiddle_imag = -(16'sd14823); end
            12'd307 : begin twiddle_real = 16'sd29201; twiddle_imag = -(16'sd14868); end
            12'd308 : begin twiddle_real = 16'sd29178; twiddle_imag = -(16'sd14913); end
            12'd309 : begin twiddle_real = 16'sd29155; twiddle_imag = -(16'sd14957); end
            12'd310 : begin twiddle_real = 16'sd29132; twiddle_imag = -(16'sd15002); end
            12'd311 : begin twiddle_real = 16'sd29109; twiddle_imag = -(16'sd15047); end
            12'd312 : begin twiddle_real = 16'sd29086; twiddle_imag = -(16'sd15091); end
            12'd313 : begin twiddle_real = 16'sd29062; twiddle_imag = -(16'sd15136); end
            12'd314 : begin twiddle_real = 16'sd29039; twiddle_imag = -(16'sd15181); end
            12'd315 : begin twiddle_real = 16'sd29016; twiddle_imag = -(16'sd15225); end
            12'd316 : begin twiddle_real = 16'sd28993; twiddle_imag = -(16'sd15270); end
            12'd317 : begin twiddle_real = 16'sd28969; twiddle_imag = -(16'sd15314); end
            12'd318 : begin twiddle_real = 16'sd28946; twiddle_imag = -(16'sd15358); end
            12'd319 : begin twiddle_real = 16'sd28922; twiddle_imag = -(16'sd15403); end
            12'd320 : begin twiddle_real = 16'sd28898; twiddle_imag = -(16'sd15447); end
            12'd321 : begin twiddle_real = 16'sd28875; twiddle_imag = -(16'sd15492); end
            12'd322 : begin twiddle_real = 16'sd28851; twiddle_imag = -(16'sd15536); end
            12'd323 : begin twiddle_real = 16'sd28827; twiddle_imag = -(16'sd15580); end
            12'd324 : begin twiddle_real = 16'sd28803; twiddle_imag = -(16'sd15624); end
            12'd325 : begin twiddle_real = 16'sd28779; twiddle_imag = -(16'sd15668); end
            12'd326 : begin twiddle_real = 16'sd28755; twiddle_imag = -(16'sd15713); end
            12'd327 : begin twiddle_real = 16'sd28731; twiddle_imag = -(16'sd15757); end
            12'd328 : begin twiddle_real = 16'sd28707; twiddle_imag = -(16'sd15801); end
            12'd329 : begin twiddle_real = 16'sd28682; twiddle_imag = -(16'sd15845); end
            12'd330 : begin twiddle_real = 16'sd28658; twiddle_imag = -(16'sd15889); end
            12'd331 : begin twiddle_real = 16'sd28634; twiddle_imag = -(16'sd15933); end
            12'd332 : begin twiddle_real = 16'sd28609; twiddle_imag = -(16'sd15977); end
            12'd333 : begin twiddle_real = 16'sd28585; twiddle_imag = -(16'sd16020); end
            12'd334 : begin twiddle_real = 16'sd28560; twiddle_imag = -(16'sd16064); end
            12'd335 : begin twiddle_real = 16'sd28535; twiddle_imag = -(16'sd16108); end
            12'd336 : begin twiddle_real = 16'sd28511; twiddle_imag = -(16'sd16152); end
            12'd337 : begin twiddle_real = 16'sd28486; twiddle_imag = -(16'sd16196); end
            12'd338 : begin twiddle_real = 16'sd28461; twiddle_imag = -(16'sd16239); end
            12'd339 : begin twiddle_real = 16'sd28436; twiddle_imag = -(16'sd16283); end
            12'd340 : begin twiddle_real = 16'sd28411; twiddle_imag = -(16'sd16326); end
            12'd341 : begin twiddle_real = 16'sd28386; twiddle_imag = -(16'sd16370); end
            12'd342 : begin twiddle_real = 16'sd28361; twiddle_imag = -(16'sd16414); end
            12'd343 : begin twiddle_real = 16'sd28335; twiddle_imag = -(16'sd16457); end
            12'd344 : begin twiddle_real = 16'sd28310; twiddle_imag = -(16'sd16500); end
            12'd345 : begin twiddle_real = 16'sd28285; twiddle_imag = -(16'sd16544); end
            12'd346 : begin twiddle_real = 16'sd28259; twiddle_imag = -(16'sd16587); end
            12'd347 : begin twiddle_real = 16'sd28234; twiddle_imag = -(16'sd16631); end
            12'd348 : begin twiddle_real = 16'sd28208; twiddle_imag = -(16'sd16674); end
            12'd349 : begin twiddle_real = 16'sd28183; twiddle_imag = -(16'sd16717); end
            12'd350 : begin twiddle_real = 16'sd28157; twiddle_imag = -(16'sd16760); end
            12'd351 : begin twiddle_real = 16'sd28131; twiddle_imag = -(16'sd16803); end
            12'd352 : begin twiddle_real = 16'sd28106; twiddle_imag = -(16'sd16847); end
            12'd353 : begin twiddle_real = 16'sd28080; twiddle_imag = -(16'sd16890); end
            12'd354 : begin twiddle_real = 16'sd28054; twiddle_imag = -(16'sd16933); end
            12'd355 : begin twiddle_real = 16'sd28028; twiddle_imag = -(16'sd16976); end
            12'd356 : begin twiddle_real = 16'sd28002; twiddle_imag = -(16'sd17019); end
            12'd357 : begin twiddle_real = 16'sd27976; twiddle_imag = -(16'sd17062); end
            12'd358 : begin twiddle_real = 16'sd27949; twiddle_imag = -(16'sd17105); end
            12'd359 : begin twiddle_real = 16'sd27923; twiddle_imag = -(16'sd17147); end
            12'd360 : begin twiddle_real = 16'sd27897; twiddle_imag = -(16'sd17190); end
            12'd361 : begin twiddle_real = 16'sd27870; twiddle_imag = -(16'sd17233); end
            12'd362 : begin twiddle_real = 16'sd27844; twiddle_imag = -(16'sd17276); end
            12'd363 : begin twiddle_real = 16'sd27817; twiddle_imag = -(16'sd17318); end
            12'd364 : begin twiddle_real = 16'sd27791; twiddle_imag = -(16'sd17361); end
            12'd365 : begin twiddle_real = 16'sd27764; twiddle_imag = -(16'sd17404); end
            12'd366 : begin twiddle_real = 16'sd27737; twiddle_imag = -(16'sd17446); end
            12'd367 : begin twiddle_real = 16'sd27711; twiddle_imag = -(16'sd17489); end
            12'd368 : begin twiddle_real = 16'sd27684; twiddle_imag = -(16'sd17531); end
            12'd369 : begin twiddle_real = 16'sd27657; twiddle_imag = -(16'sd17574); end
            12'd370 : begin twiddle_real = 16'sd27630; twiddle_imag = -(16'sd17616); end
            12'd371 : begin twiddle_real = 16'sd27603; twiddle_imag = -(16'sd17659); end
            12'd372 : begin twiddle_real = 16'sd27576; twiddle_imag = -(16'sd17701); end
            12'd373 : begin twiddle_real = 16'sd27548; twiddle_imag = -(16'sd17743); end
            12'd374 : begin twiddle_real = 16'sd27521; twiddle_imag = -(16'sd17785); end
            12'd375 : begin twiddle_real = 16'sd27494; twiddle_imag = -(16'sd17828); end
            12'd376 : begin twiddle_real = 16'sd27466; twiddle_imag = -(16'sd17870); end
            12'd377 : begin twiddle_real = 16'sd27439; twiddle_imag = -(16'sd17912); end
            12'd378 : begin twiddle_real = 16'sd27411; twiddle_imag = -(16'sd17954); end
            12'd379 : begin twiddle_real = 16'sd27384; twiddle_imag = -(16'sd17996); end
            12'd380 : begin twiddle_real = 16'sd27356; twiddle_imag = -(16'sd18038); end
            12'd381 : begin twiddle_real = 16'sd27329; twiddle_imag = -(16'sd18080); end
            12'd382 : begin twiddle_real = 16'sd27301; twiddle_imag = -(16'sd18122); end
            12'd383 : begin twiddle_real = 16'sd27273; twiddle_imag = -(16'sd18164); end
            12'd384 : begin twiddle_real = 16'sd27245; twiddle_imag = -(16'sd18205); end
            12'd385 : begin twiddle_real = 16'sd27217; twiddle_imag = -(16'sd18247); end
            12'd386 : begin twiddle_real = 16'sd27189; twiddle_imag = -(16'sd18289); end
            12'd387 : begin twiddle_real = 16'sd27161; twiddle_imag = -(16'sd18331); end
            12'd388 : begin twiddle_real = 16'sd27133; twiddle_imag = -(16'sd18372); end
            12'd389 : begin twiddle_real = 16'sd27105; twiddle_imag = -(16'sd18414); end
            12'd390 : begin twiddle_real = 16'sd27076; twiddle_imag = -(16'sd18455); end
            12'd391 : begin twiddle_real = 16'sd27048; twiddle_imag = -(16'sd18497); end
            12'd392 : begin twiddle_real = 16'sd27020; twiddle_imag = -(16'sd18538); end
            12'd393 : begin twiddle_real = 16'sd26991; twiddle_imag = -(16'sd18580); end
            12'd394 : begin twiddle_real = 16'sd26963; twiddle_imag = -(16'sd18621); end
            12'd395 : begin twiddle_real = 16'sd26934; twiddle_imag = -(16'sd18663); end
            12'd396 : begin twiddle_real = 16'sd26905; twiddle_imag = -(16'sd18704); end
            12'd397 : begin twiddle_real = 16'sd26877; twiddle_imag = -(16'sd18745); end
            12'd398 : begin twiddle_real = 16'sd26848; twiddle_imag = -(16'sd18786); end
            12'd399 : begin twiddle_real = 16'sd26819; twiddle_imag = -(16'sd18827); end
            12'd400 : begin twiddle_real = 16'sd26790; twiddle_imag = -(16'sd18869); end
            12'd401 : begin twiddle_real = 16'sd26761; twiddle_imag = -(16'sd18910); end
            12'd402 : begin twiddle_real = 16'sd26732; twiddle_imag = -(16'sd18951); end
            12'd403 : begin twiddle_real = 16'sd26703; twiddle_imag = -(16'sd18992); end
            12'd404 : begin twiddle_real = 16'sd26674; twiddle_imag = -(16'sd19033); end
            12'd405 : begin twiddle_real = 16'sd26645; twiddle_imag = -(16'sd19074); end
            12'd406 : begin twiddle_real = 16'sd26615; twiddle_imag = -(16'sd19114); end
            12'd407 : begin twiddle_real = 16'sd26586; twiddle_imag = -(16'sd19155); end
            12'd408 : begin twiddle_real = 16'sd26557; twiddle_imag = -(16'sd19196); end
            12'd409 : begin twiddle_real = 16'sd26527; twiddle_imag = -(16'sd19237); end
            12'd410 : begin twiddle_real = 16'sd26498; twiddle_imag = -(16'sd19277); end
            12'd411 : begin twiddle_real = 16'sd26468; twiddle_imag = -(16'sd19318); end
            12'd412 : begin twiddle_real = 16'sd26438; twiddle_imag = -(16'sd19359); end
            12'd413 : begin twiddle_real = 16'sd26409; twiddle_imag = -(16'sd19399); end
            12'd414 : begin twiddle_real = 16'sd26379; twiddle_imag = -(16'sd19440); end
            12'd415 : begin twiddle_real = 16'sd26349; twiddle_imag = -(16'sd19480); end
            12'd416 : begin twiddle_real = 16'sd26319; twiddle_imag = -(16'sd19520); end
            12'd417 : begin twiddle_real = 16'sd26289; twiddle_imag = -(16'sd19561); end
            12'd418 : begin twiddle_real = 16'sd26259; twiddle_imag = -(16'sd19601); end
            12'd419 : begin twiddle_real = 16'sd26229; twiddle_imag = -(16'sd19641); end
            12'd420 : begin twiddle_real = 16'sd26199; twiddle_imag = -(16'sd19682); end
            12'd421 : begin twiddle_real = 16'sd26169; twiddle_imag = -(16'sd19722); end
            12'd422 : begin twiddle_real = 16'sd26138; twiddle_imag = -(16'sd19762); end
            12'd423 : begin twiddle_real = 16'sd26108; twiddle_imag = -(16'sd19802); end
            12'd424 : begin twiddle_real = 16'sd26077; twiddle_imag = -(16'sd19842); end
            12'd425 : begin twiddle_real = 16'sd26047; twiddle_imag = -(16'sd19882); end
            12'd426 : begin twiddle_real = 16'sd26016; twiddle_imag = -(16'sd19922); end
            12'd427 : begin twiddle_real = 16'sd25986; twiddle_imag = -(16'sd19962); end
            12'd428 : begin twiddle_real = 16'sd25955; twiddle_imag = -(16'sd20002); end
            12'd429 : begin twiddle_real = 16'sd25925; twiddle_imag = -(16'sd20041); end
            12'd430 : begin twiddle_real = 16'sd25894; twiddle_imag = -(16'sd20081); end
            12'd431 : begin twiddle_real = 16'sd25863; twiddle_imag = -(16'sd20121); end
            12'd432 : begin twiddle_real = 16'sd25832; twiddle_imag = -(16'sd20160); end
            12'd433 : begin twiddle_real = 16'sd25801; twiddle_imag = -(16'sd20200); end
            12'd434 : begin twiddle_real = 16'sd25770; twiddle_imag = -(16'sd20240); end
            12'd435 : begin twiddle_real = 16'sd25739; twiddle_imag = -(16'sd20279); end
            12'd436 : begin twiddle_real = 16'sd25708; twiddle_imag = -(16'sd20319); end
            12'd437 : begin twiddle_real = 16'sd25677; twiddle_imag = -(16'sd20358); end
            12'd438 : begin twiddle_real = 16'sd25645; twiddle_imag = -(16'sd20397); end
            12'd439 : begin twiddle_real = 16'sd25614; twiddle_imag = -(16'sd20437); end
            12'd440 : begin twiddle_real = 16'sd25583; twiddle_imag = -(16'sd20476); end
            12'd441 : begin twiddle_real = 16'sd25551; twiddle_imag = -(16'sd20515); end
            12'd442 : begin twiddle_real = 16'sd25520; twiddle_imag = -(16'sd20554); end
            12'd443 : begin twiddle_real = 16'sd25488; twiddle_imag = -(16'sd20593); end
            12'd444 : begin twiddle_real = 16'sd25457; twiddle_imag = -(16'sd20632); end
            12'd445 : begin twiddle_real = 16'sd25425; twiddle_imag = -(16'sd20672); end
            12'd446 : begin twiddle_real = 16'sd25393; twiddle_imag = -(16'sd20710); end
            12'd447 : begin twiddle_real = 16'sd25361; twiddle_imag = -(16'sd20749); end
            12'd448 : begin twiddle_real = 16'sd25330; twiddle_imag = -(16'sd20788); end
            12'd449 : begin twiddle_real = 16'sd25298; twiddle_imag = -(16'sd20827); end
            12'd450 : begin twiddle_real = 16'sd25266; twiddle_imag = -(16'sd20866); end
            12'd451 : begin twiddle_real = 16'sd25234; twiddle_imag = -(16'sd20905); end
            12'd452 : begin twiddle_real = 16'sd25201; twiddle_imag = -(16'sd20943); end
            12'd453 : begin twiddle_real = 16'sd25169; twiddle_imag = -(16'sd20982); end
            12'd454 : begin twiddle_real = 16'sd25137; twiddle_imag = -(16'sd21021); end
            12'd455 : begin twiddle_real = 16'sd25105; twiddle_imag = -(16'sd21059); end
            12'd456 : begin twiddle_real = 16'sd25073; twiddle_imag = -(16'sd21098); end
            12'd457 : begin twiddle_real = 16'sd25040; twiddle_imag = -(16'sd21136); end
            12'd458 : begin twiddle_real = 16'sd25008; twiddle_imag = -(16'sd21174); end
            12'd459 : begin twiddle_real = 16'sd24975; twiddle_imag = -(16'sd21213); end
            12'd460 : begin twiddle_real = 16'sd24943; twiddle_imag = -(16'sd21251); end
            12'd461 : begin twiddle_real = 16'sd24910; twiddle_imag = -(16'sd21289); end
            12'd462 : begin twiddle_real = 16'sd24877; twiddle_imag = -(16'sd21327); end
            12'd463 : begin twiddle_real = 16'sd24845; twiddle_imag = -(16'sd21366); end
            12'd464 : begin twiddle_real = 16'sd24812; twiddle_imag = -(16'sd21404); end
            12'd465 : begin twiddle_real = 16'sd24779; twiddle_imag = -(16'sd21442); end
            12'd466 : begin twiddle_real = 16'sd24746; twiddle_imag = -(16'sd21480); end
            12'd467 : begin twiddle_real = 16'sd24713; twiddle_imag = -(16'sd21518); end
            12'd468 : begin twiddle_real = 16'sd24680; twiddle_imag = -(16'sd21556); end
            12'd469 : begin twiddle_real = 16'sd24647; twiddle_imag = -(16'sd21593); end
            12'd470 : begin twiddle_real = 16'sd24614; twiddle_imag = -(16'sd21631); end
            12'd471 : begin twiddle_real = 16'sd24580; twiddle_imag = -(16'sd21669); end
            12'd472 : begin twiddle_real = 16'sd24547; twiddle_imag = -(16'sd21707); end
            12'd473 : begin twiddle_real = 16'sd24514; twiddle_imag = -(16'sd21744); end
            12'd474 : begin twiddle_real = 16'sd24480; twiddle_imag = -(16'sd21782); end
            12'd475 : begin twiddle_real = 16'sd24447; twiddle_imag = -(16'sd21819); end
            12'd476 : begin twiddle_real = 16'sd24414; twiddle_imag = -(16'sd21857); end
            12'd477 : begin twiddle_real = 16'sd24380; twiddle_imag = -(16'sd21894); end
            12'd478 : begin twiddle_real = 16'sd24346; twiddle_imag = -(16'sd21932); end
            12'd479 : begin twiddle_real = 16'sd24313; twiddle_imag = -(16'sd21969); end
            12'd480 : begin twiddle_real = 16'sd24279; twiddle_imag = -(16'sd22006); end
            12'd481 : begin twiddle_real = 16'sd24245; twiddle_imag = -(16'sd22043); end
            12'd482 : begin twiddle_real = 16'sd24211; twiddle_imag = -(16'sd22081); end
            12'd483 : begin twiddle_real = 16'sd24177; twiddle_imag = -(16'sd22118); end
            12'd484 : begin twiddle_real = 16'sd24144; twiddle_imag = -(16'sd22155); end
            12'd485 : begin twiddle_real = 16'sd24109; twiddle_imag = -(16'sd22192); end
            12'd486 : begin twiddle_real = 16'sd24075; twiddle_imag = -(16'sd22229); end
            12'd487 : begin twiddle_real = 16'sd24041; twiddle_imag = -(16'sd22266); end
            12'd488 : begin twiddle_real = 16'sd24007; twiddle_imag = -(16'sd22302); end
            12'd489 : begin twiddle_real = 16'sd23973; twiddle_imag = -(16'sd22339); end
            12'd490 : begin twiddle_real = 16'sd23939; twiddle_imag = -(16'sd22376); end
            12'd491 : begin twiddle_real = 16'sd23904; twiddle_imag = -(16'sd22413); end
            12'd492 : begin twiddle_real = 16'sd23870; twiddle_imag = -(16'sd22449); end
            12'd493 : begin twiddle_real = 16'sd23835; twiddle_imag = -(16'sd22486); end
            12'd494 : begin twiddle_real = 16'sd23801; twiddle_imag = -(16'sd22522); end
            12'd495 : begin twiddle_real = 16'sd23766; twiddle_imag = -(16'sd22559); end
            12'd496 : begin twiddle_real = 16'sd23732; twiddle_imag = -(16'sd22595); end
            12'd497 : begin twiddle_real = 16'sd23697; twiddle_imag = -(16'sd22632); end
            12'd498 : begin twiddle_real = 16'sd23662; twiddle_imag = -(16'sd22668); end
            12'd499 : begin twiddle_real = 16'sd23627; twiddle_imag = -(16'sd22704); end
            12'd500 : begin twiddle_real = 16'sd23593; twiddle_imag = -(16'sd22741); end
            12'd501 : begin twiddle_real = 16'sd23558; twiddle_imag = -(16'sd22777); end
            12'd502 : begin twiddle_real = 16'sd23523; twiddle_imag = -(16'sd22813); end
            12'd503 : begin twiddle_real = 16'sd23488; twiddle_imag = -(16'sd22849); end
            12'd504 : begin twiddle_real = 16'sd23453; twiddle_imag = -(16'sd22885); end
            12'd505 : begin twiddle_real = 16'sd23417; twiddle_imag = -(16'sd22921); end
            12'd506 : begin twiddle_real = 16'sd23382; twiddle_imag = -(16'sd22957); end
            12'd507 : begin twiddle_real = 16'sd23347; twiddle_imag = -(16'sd22993); end
            12'd508 : begin twiddle_real = 16'sd23312; twiddle_imag = -(16'sd23028); end
            12'd509 : begin twiddle_real = 16'sd23276; twiddle_imag = -(16'sd23064); end
            12'd510 : begin twiddle_real = 16'sd23241; twiddle_imag = -(16'sd23100); end
            12'd511 : begin twiddle_real = 16'sd23205; twiddle_imag = -(16'sd23135); end
            12'd512 : begin twiddle_real = 16'sd23170; twiddle_imag = -(16'sd23171); end
            12'd513 : begin twiddle_real = 16'sd23134; twiddle_imag = -(16'sd23206); end
            12'd514 : begin twiddle_real = 16'sd23099; twiddle_imag = -(16'sd23242); end
            12'd515 : begin twiddle_real = 16'sd23063; twiddle_imag = -(16'sd23277); end
            12'd516 : begin twiddle_real = 16'sd23027; twiddle_imag = -(16'sd23313); end
            12'd517 : begin twiddle_real = 16'sd22992; twiddle_imag = -(16'sd23348); end
            12'd518 : begin twiddle_real = 16'sd22956; twiddle_imag = -(16'sd23383); end
            12'd519 : begin twiddle_real = 16'sd22920; twiddle_imag = -(16'sd23418); end
            12'd520 : begin twiddle_real = 16'sd22884; twiddle_imag = -(16'sd23454); end
            12'd521 : begin twiddle_real = 16'sd22848; twiddle_imag = -(16'sd23489); end
            12'd522 : begin twiddle_real = 16'sd22812; twiddle_imag = -(16'sd23524); end
            12'd523 : begin twiddle_real = 16'sd22776; twiddle_imag = -(16'sd23559); end
            12'd524 : begin twiddle_real = 16'sd22740; twiddle_imag = -(16'sd23594); end
            12'd525 : begin twiddle_real = 16'sd22703; twiddle_imag = -(16'sd23628); end
            12'd526 : begin twiddle_real = 16'sd22667; twiddle_imag = -(16'sd23663); end
            12'd527 : begin twiddle_real = 16'sd22631; twiddle_imag = -(16'sd23698); end
            12'd528 : begin twiddle_real = 16'sd22594; twiddle_imag = -(16'sd23733); end
            12'd529 : begin twiddle_real = 16'sd22558; twiddle_imag = -(16'sd23767); end
            12'd530 : begin twiddle_real = 16'sd22521; twiddle_imag = -(16'sd23802); end
            12'd531 : begin twiddle_real = 16'sd22485; twiddle_imag = -(16'sd23836); end
            12'd532 : begin twiddle_real = 16'sd22448; twiddle_imag = -(16'sd23871); end
            12'd533 : begin twiddle_real = 16'sd22412; twiddle_imag = -(16'sd23905); end
            12'd534 : begin twiddle_real = 16'sd22375; twiddle_imag = -(16'sd23940); end
            12'd535 : begin twiddle_real = 16'sd22338; twiddle_imag = -(16'sd23974); end
            12'd536 : begin twiddle_real = 16'sd22301; twiddle_imag = -(16'sd24008); end
            12'd537 : begin twiddle_real = 16'sd22265; twiddle_imag = -(16'sd24042); end
            12'd538 : begin twiddle_real = 16'sd22228; twiddle_imag = -(16'sd24076); end
            12'd539 : begin twiddle_real = 16'sd22191; twiddle_imag = -(16'sd24110); end
            12'd540 : begin twiddle_real = 16'sd22154; twiddle_imag = -(16'sd24145); end
            12'd541 : begin twiddle_real = 16'sd22117; twiddle_imag = -(16'sd24178); end
            12'd542 : begin twiddle_real = 16'sd22080; twiddle_imag = -(16'sd24212); end
            12'd543 : begin twiddle_real = 16'sd22042; twiddle_imag = -(16'sd24246); end
            12'd544 : begin twiddle_real = 16'sd22005; twiddle_imag = -(16'sd24280); end
            12'd545 : begin twiddle_real = 16'sd21968; twiddle_imag = -(16'sd24314); end
            12'd546 : begin twiddle_real = 16'sd21931; twiddle_imag = -(16'sd24347); end
            12'd547 : begin twiddle_real = 16'sd21893; twiddle_imag = -(16'sd24381); end
            12'd548 : begin twiddle_real = 16'sd21856; twiddle_imag = -(16'sd24415); end
            12'd549 : begin twiddle_real = 16'sd21818; twiddle_imag = -(16'sd24448); end
            12'd550 : begin twiddle_real = 16'sd21781; twiddle_imag = -(16'sd24481); end
            12'd551 : begin twiddle_real = 16'sd21743; twiddle_imag = -(16'sd24515); end
            12'd552 : begin twiddle_real = 16'sd21706; twiddle_imag = -(16'sd24548); end
            12'd553 : begin twiddle_real = 16'sd21668; twiddle_imag = -(16'sd24581); end
            12'd554 : begin twiddle_real = 16'sd21630; twiddle_imag = -(16'sd24615); end
            12'd555 : begin twiddle_real = 16'sd21592; twiddle_imag = -(16'sd24648); end
            12'd556 : begin twiddle_real = 16'sd21555; twiddle_imag = -(16'sd24681); end
            12'd557 : begin twiddle_real = 16'sd21517; twiddle_imag = -(16'sd24714); end
            12'd558 : begin twiddle_real = 16'sd21479; twiddle_imag = -(16'sd24747); end
            12'd559 : begin twiddle_real = 16'sd21441; twiddle_imag = -(16'sd24780); end
            12'd560 : begin twiddle_real = 16'sd21403; twiddle_imag = -(16'sd24813); end
            12'd561 : begin twiddle_real = 16'sd21365; twiddle_imag = -(16'sd24846); end
            12'd562 : begin twiddle_real = 16'sd21326; twiddle_imag = -(16'sd24878); end
            12'd563 : begin twiddle_real = 16'sd21288; twiddle_imag = -(16'sd24911); end
            12'd564 : begin twiddle_real = 16'sd21250; twiddle_imag = -(16'sd24944); end
            12'd565 : begin twiddle_real = 16'sd21212; twiddle_imag = -(16'sd24976); end
            12'd566 : begin twiddle_real = 16'sd21173; twiddle_imag = -(16'sd25009); end
            12'd567 : begin twiddle_real = 16'sd21135; twiddle_imag = -(16'sd25041); end
            12'd568 : begin twiddle_real = 16'sd21097; twiddle_imag = -(16'sd25074); end
            12'd569 : begin twiddle_real = 16'sd21058; twiddle_imag = -(16'sd25106); end
            12'd570 : begin twiddle_real = 16'sd21020; twiddle_imag = -(16'sd25138); end
            12'd571 : begin twiddle_real = 16'sd20981; twiddle_imag = -(16'sd25170); end
            12'd572 : begin twiddle_real = 16'sd20942; twiddle_imag = -(16'sd25202); end
            12'd573 : begin twiddle_real = 16'sd20904; twiddle_imag = -(16'sd25235); end
            12'd574 : begin twiddle_real = 16'sd20865; twiddle_imag = -(16'sd25267); end
            12'd575 : begin twiddle_real = 16'sd20826; twiddle_imag = -(16'sd25299); end
            12'd576 : begin twiddle_real = 16'sd20787; twiddle_imag = -(16'sd25331); end
            12'd577 : begin twiddle_real = 16'sd20748; twiddle_imag = -(16'sd25362); end
            12'd578 : begin twiddle_real = 16'sd20709; twiddle_imag = -(16'sd25394); end
            12'd579 : begin twiddle_real = 16'sd20671; twiddle_imag = -(16'sd25426); end
            12'd580 : begin twiddle_real = 16'sd20631; twiddle_imag = -(16'sd25458); end
            12'd581 : begin twiddle_real = 16'sd20592; twiddle_imag = -(16'sd25489); end
            12'd582 : begin twiddle_real = 16'sd20553; twiddle_imag = -(16'sd25521); end
            12'd583 : begin twiddle_real = 16'sd20514; twiddle_imag = -(16'sd25552); end
            12'd584 : begin twiddle_real = 16'sd20475; twiddle_imag = -(16'sd25584); end
            12'd585 : begin twiddle_real = 16'sd20436; twiddle_imag = -(16'sd25615); end
            12'd586 : begin twiddle_real = 16'sd20396; twiddle_imag = -(16'sd25646); end
            12'd587 : begin twiddle_real = 16'sd20357; twiddle_imag = -(16'sd25678); end
            12'd588 : begin twiddle_real = 16'sd20318; twiddle_imag = -(16'sd25709); end
            12'd589 : begin twiddle_real = 16'sd20278; twiddle_imag = -(16'sd25740); end
            12'd590 : begin twiddle_real = 16'sd20239; twiddle_imag = -(16'sd25771); end
            12'd591 : begin twiddle_real = 16'sd20199; twiddle_imag = -(16'sd25802); end
            12'd592 : begin twiddle_real = 16'sd20159; twiddle_imag = -(16'sd25833); end
            12'd593 : begin twiddle_real = 16'sd20120; twiddle_imag = -(16'sd25864); end
            12'd594 : begin twiddle_real = 16'sd20080; twiddle_imag = -(16'sd25895); end
            12'd595 : begin twiddle_real = 16'sd20040; twiddle_imag = -(16'sd25926); end
            12'd596 : begin twiddle_real = 16'sd20001; twiddle_imag = -(16'sd25956); end
            12'd597 : begin twiddle_real = 16'sd19961; twiddle_imag = -(16'sd25987); end
            12'd598 : begin twiddle_real = 16'sd19921; twiddle_imag = -(16'sd26017); end
            12'd599 : begin twiddle_real = 16'sd19881; twiddle_imag = -(16'sd26048); end
            12'd600 : begin twiddle_real = 16'sd19841; twiddle_imag = -(16'sd26078); end
            12'd601 : begin twiddle_real = 16'sd19801; twiddle_imag = -(16'sd26109); end
            12'd602 : begin twiddle_real = 16'sd19761; twiddle_imag = -(16'sd26139); end
            12'd603 : begin twiddle_real = 16'sd19721; twiddle_imag = -(16'sd26170); end
            12'd604 : begin twiddle_real = 16'sd19681; twiddle_imag = -(16'sd26200); end
            12'd605 : begin twiddle_real = 16'sd19640; twiddle_imag = -(16'sd26230); end
            12'd606 : begin twiddle_real = 16'sd19600; twiddle_imag = -(16'sd26260); end
            12'd607 : begin twiddle_real = 16'sd19560; twiddle_imag = -(16'sd26290); end
            12'd608 : begin twiddle_real = 16'sd19519; twiddle_imag = -(16'sd26320); end
            12'd609 : begin twiddle_real = 16'sd19479; twiddle_imag = -(16'sd26350); end
            12'd610 : begin twiddle_real = 16'sd19439; twiddle_imag = -(16'sd26380); end
            12'd611 : begin twiddle_real = 16'sd19398; twiddle_imag = -(16'sd26410); end
            12'd612 : begin twiddle_real = 16'sd19358; twiddle_imag = -(16'sd26439); end
            12'd613 : begin twiddle_real = 16'sd19317; twiddle_imag = -(16'sd26469); end
            12'd614 : begin twiddle_real = 16'sd19276; twiddle_imag = -(16'sd26499); end
            12'd615 : begin twiddle_real = 16'sd19236; twiddle_imag = -(16'sd26528); end
            12'd616 : begin twiddle_real = 16'sd19195; twiddle_imag = -(16'sd26558); end
            12'd617 : begin twiddle_real = 16'sd19154; twiddle_imag = -(16'sd26587); end
            12'd618 : begin twiddle_real = 16'sd19113; twiddle_imag = -(16'sd26616); end
            12'd619 : begin twiddle_real = 16'sd19073; twiddle_imag = -(16'sd26646); end
            12'd620 : begin twiddle_real = 16'sd19032; twiddle_imag = -(16'sd26675); end
            12'd621 : begin twiddle_real = 16'sd18991; twiddle_imag = -(16'sd26704); end
            12'd622 : begin twiddle_real = 16'sd18950; twiddle_imag = -(16'sd26733); end
            12'd623 : begin twiddle_real = 16'sd18909; twiddle_imag = -(16'sd26762); end
            12'd624 : begin twiddle_real = 16'sd18868; twiddle_imag = -(16'sd26791); end
            12'd625 : begin twiddle_real = 16'sd18826; twiddle_imag = -(16'sd26820); end
            12'd626 : begin twiddle_real = 16'sd18785; twiddle_imag = -(16'sd26849); end
            12'd627 : begin twiddle_real = 16'sd18744; twiddle_imag = -(16'sd26878); end
            12'd628 : begin twiddle_real = 16'sd18703; twiddle_imag = -(16'sd26906); end
            12'd629 : begin twiddle_real = 16'sd18662; twiddle_imag = -(16'sd26935); end
            12'd630 : begin twiddle_real = 16'sd18620; twiddle_imag = -(16'sd26964); end
            12'd631 : begin twiddle_real = 16'sd18579; twiddle_imag = -(16'sd26992); end
            12'd632 : begin twiddle_real = 16'sd18537; twiddle_imag = -(16'sd27021); end
            12'd633 : begin twiddle_real = 16'sd18496; twiddle_imag = -(16'sd27049); end
            12'd634 : begin twiddle_real = 16'sd18454; twiddle_imag = -(16'sd27077); end
            12'd635 : begin twiddle_real = 16'sd18413; twiddle_imag = -(16'sd27106); end
            12'd636 : begin twiddle_real = 16'sd18371; twiddle_imag = -(16'sd27134); end
            12'd637 : begin twiddle_real = 16'sd18330; twiddle_imag = -(16'sd27162); end
            12'd638 : begin twiddle_real = 16'sd18288; twiddle_imag = -(16'sd27190); end
            12'd639 : begin twiddle_real = 16'sd18246; twiddle_imag = -(16'sd27218); end
            12'd640 : begin twiddle_real = 16'sd18204; twiddle_imag = -(16'sd27246); end
            12'd641 : begin twiddle_real = 16'sd18163; twiddle_imag = -(16'sd27274); end
            12'd642 : begin twiddle_real = 16'sd18121; twiddle_imag = -(16'sd27302); end
            12'd643 : begin twiddle_real = 16'sd18079; twiddle_imag = -(16'sd27330); end
            12'd644 : begin twiddle_real = 16'sd18037; twiddle_imag = -(16'sd27357); end
            12'd645 : begin twiddle_real = 16'sd17995; twiddle_imag = -(16'sd27385); end
            12'd646 : begin twiddle_real = 16'sd17953; twiddle_imag = -(16'sd27412); end
            12'd647 : begin twiddle_real = 16'sd17911; twiddle_imag = -(16'sd27440); end
            12'd648 : begin twiddle_real = 16'sd17869; twiddle_imag = -(16'sd27467); end
            12'd649 : begin twiddle_real = 16'sd17827; twiddle_imag = -(16'sd27495); end
            12'd650 : begin twiddle_real = 16'sd17784; twiddle_imag = -(16'sd27522); end
            12'd651 : begin twiddle_real = 16'sd17742; twiddle_imag = -(16'sd27549); end
            12'd652 : begin twiddle_real = 16'sd17700; twiddle_imag = -(16'sd27577); end
            12'd653 : begin twiddle_real = 16'sd17658; twiddle_imag = -(16'sd27604); end
            12'd654 : begin twiddle_real = 16'sd17615; twiddle_imag = -(16'sd27631); end
            12'd655 : begin twiddle_real = 16'sd17573; twiddle_imag = -(16'sd27658); end
            12'd656 : begin twiddle_real = 16'sd17530; twiddle_imag = -(16'sd27685); end
            12'd657 : begin twiddle_real = 16'sd17488; twiddle_imag = -(16'sd27712); end
            12'd658 : begin twiddle_real = 16'sd17445; twiddle_imag = -(16'sd27738); end
            12'd659 : begin twiddle_real = 16'sd17403; twiddle_imag = -(16'sd27765); end
            12'd660 : begin twiddle_real = 16'sd17360; twiddle_imag = -(16'sd27792); end
            12'd661 : begin twiddle_real = 16'sd17317; twiddle_imag = -(16'sd27818); end
            12'd662 : begin twiddle_real = 16'sd17275; twiddle_imag = -(16'sd27845); end
            12'd663 : begin twiddle_real = 16'sd17232; twiddle_imag = -(16'sd27871); end
            12'd664 : begin twiddle_real = 16'sd17189; twiddle_imag = -(16'sd27898); end
            12'd665 : begin twiddle_real = 16'sd17146; twiddle_imag = -(16'sd27924); end
            12'd666 : begin twiddle_real = 16'sd17104; twiddle_imag = -(16'sd27950); end
            12'd667 : begin twiddle_real = 16'sd17061; twiddle_imag = -(16'sd27977); end
            12'd668 : begin twiddle_real = 16'sd17018; twiddle_imag = -(16'sd28003); end
            12'd669 : begin twiddle_real = 16'sd16975; twiddle_imag = -(16'sd28029); end
            12'd670 : begin twiddle_real = 16'sd16932; twiddle_imag = -(16'sd28055); end
            12'd671 : begin twiddle_real = 16'sd16889; twiddle_imag = -(16'sd28081); end
            12'd672 : begin twiddle_real = 16'sd16846; twiddle_imag = -(16'sd28107); end
            12'd673 : begin twiddle_real = 16'sd16802; twiddle_imag = -(16'sd28132); end
            12'd674 : begin twiddle_real = 16'sd16759; twiddle_imag = -(16'sd28158); end
            12'd675 : begin twiddle_real = 16'sd16716; twiddle_imag = -(16'sd28184); end
            12'd676 : begin twiddle_real = 16'sd16673; twiddle_imag = -(16'sd28209); end
            12'd677 : begin twiddle_real = 16'sd16630; twiddle_imag = -(16'sd28235); end
            12'd678 : begin twiddle_real = 16'sd16586; twiddle_imag = -(16'sd28260); end
            12'd679 : begin twiddle_real = 16'sd16543; twiddle_imag = -(16'sd28286); end
            12'd680 : begin twiddle_real = 16'sd16499; twiddle_imag = -(16'sd28311); end
            12'd681 : begin twiddle_real = 16'sd16456; twiddle_imag = -(16'sd28336); end
            12'd682 : begin twiddle_real = 16'sd16413; twiddle_imag = -(16'sd28362); end
            12'd683 : begin twiddle_real = 16'sd16369; twiddle_imag = -(16'sd28387); end
            12'd684 : begin twiddle_real = 16'sd16325; twiddle_imag = -(16'sd28412); end
            12'd685 : begin twiddle_real = 16'sd16282; twiddle_imag = -(16'sd28437); end
            12'd686 : begin twiddle_real = 16'sd16238; twiddle_imag = -(16'sd28462); end
            12'd687 : begin twiddle_real = 16'sd16195; twiddle_imag = -(16'sd28487); end
            12'd688 : begin twiddle_real = 16'sd16151; twiddle_imag = -(16'sd28512); end
            12'd689 : begin twiddle_real = 16'sd16107; twiddle_imag = -(16'sd28536); end
            12'd690 : begin twiddle_real = 16'sd16063; twiddle_imag = -(16'sd28561); end
            12'd691 : begin twiddle_real = 16'sd16019; twiddle_imag = -(16'sd28586); end
            12'd692 : begin twiddle_real = 16'sd15976; twiddle_imag = -(16'sd28610); end
            12'd693 : begin twiddle_real = 16'sd15932; twiddle_imag = -(16'sd28635); end
            12'd694 : begin twiddle_real = 16'sd15888; twiddle_imag = -(16'sd28659); end
            12'd695 : begin twiddle_real = 16'sd15844; twiddle_imag = -(16'sd28683); end
            12'd696 : begin twiddle_real = 16'sd15800; twiddle_imag = -(16'sd28708); end
            12'd697 : begin twiddle_real = 16'sd15756; twiddle_imag = -(16'sd28732); end
            12'd698 : begin twiddle_real = 16'sd15712; twiddle_imag = -(16'sd28756); end
            12'd699 : begin twiddle_real = 16'sd15667; twiddle_imag = -(16'sd28780); end
            12'd700 : begin twiddle_real = 16'sd15623; twiddle_imag = -(16'sd28804); end
            12'd701 : begin twiddle_real = 16'sd15579; twiddle_imag = -(16'sd28828); end
            12'd702 : begin twiddle_real = 16'sd15535; twiddle_imag = -(16'sd28852); end
            12'd703 : begin twiddle_real = 16'sd15491; twiddle_imag = -(16'sd28876); end
            12'd704 : begin twiddle_real = 16'sd15446; twiddle_imag = -(16'sd28899); end
            12'd705 : begin twiddle_real = 16'sd15402; twiddle_imag = -(16'sd28923); end
            12'd706 : begin twiddle_real = 16'sd15357; twiddle_imag = -(16'sd28947); end
            12'd707 : begin twiddle_real = 16'sd15313; twiddle_imag = -(16'sd28970); end
            12'd708 : begin twiddle_real = 16'sd15269; twiddle_imag = -(16'sd28994); end
            12'd709 : begin twiddle_real = 16'sd15224; twiddle_imag = -(16'sd29017); end
            12'd710 : begin twiddle_real = 16'sd15180; twiddle_imag = -(16'sd29040); end
            12'd711 : begin twiddle_real = 16'sd15135; twiddle_imag = -(16'sd29063); end
            12'd712 : begin twiddle_real = 16'sd15090; twiddle_imag = -(16'sd29087); end
            12'd713 : begin twiddle_real = 16'sd15046; twiddle_imag = -(16'sd29110); end
            12'd714 : begin twiddle_real = 16'sd15001; twiddle_imag = -(16'sd29133); end
            12'd715 : begin twiddle_real = 16'sd14956; twiddle_imag = -(16'sd29156); end
            12'd716 : begin twiddle_real = 16'sd14912; twiddle_imag = -(16'sd29179); end
            12'd717 : begin twiddle_real = 16'sd14867; twiddle_imag = -(16'sd29202); end
            12'd718 : begin twiddle_real = 16'sd14822; twiddle_imag = -(16'sd29224); end
            12'd719 : begin twiddle_real = 16'sd14777; twiddle_imag = -(16'sd29247); end
            12'd720 : begin twiddle_real = 16'sd14732; twiddle_imag = -(16'sd29270); end
            12'd721 : begin twiddle_real = 16'sd14687; twiddle_imag = -(16'sd29292); end
            12'd722 : begin twiddle_real = 16'sd14642; twiddle_imag = -(16'sd29315); end
            12'd723 : begin twiddle_real = 16'sd14598; twiddle_imag = -(16'sd29337); end
            12'd724 : begin twiddle_real = 16'sd14552; twiddle_imag = -(16'sd29360); end
            12'd725 : begin twiddle_real = 16'sd14507; twiddle_imag = -(16'sd29382); end
            12'd726 : begin twiddle_real = 16'sd14462; twiddle_imag = -(16'sd29404); end
            12'd727 : begin twiddle_real = 16'sd14417; twiddle_imag = -(16'sd29426); end
            12'd728 : begin twiddle_real = 16'sd14372; twiddle_imag = -(16'sd29448); end
            12'd729 : begin twiddle_real = 16'sd14327; twiddle_imag = -(16'sd29470); end
            12'd730 : begin twiddle_real = 16'sd14282; twiddle_imag = -(16'sd29492); end
            12'd731 : begin twiddle_real = 16'sd14236; twiddle_imag = -(16'sd29514); end
            12'd732 : begin twiddle_real = 16'sd14191; twiddle_imag = -(16'sd29536); end
            12'd733 : begin twiddle_real = 16'sd14146; twiddle_imag = -(16'sd29558); end
            12'd734 : begin twiddle_real = 16'sd14100; twiddle_imag = -(16'sd29579); end
            12'd735 : begin twiddle_real = 16'sd14055; twiddle_imag = -(16'sd29601); end
            12'd736 : begin twiddle_real = 16'sd14010; twiddle_imag = -(16'sd29622); end
            12'd737 : begin twiddle_real = 16'sd13964; twiddle_imag = -(16'sd29644); end
            12'd738 : begin twiddle_real = 16'sd13919; twiddle_imag = -(16'sd29665); end
            12'd739 : begin twiddle_real = 16'sd13873; twiddle_imag = -(16'sd29687); end
            12'd740 : begin twiddle_real = 16'sd13828; twiddle_imag = -(16'sd29708); end
            12'd741 : begin twiddle_real = 16'sd13782; twiddle_imag = -(16'sd29729); end
            12'd742 : begin twiddle_real = 16'sd13736; twiddle_imag = -(16'sd29750); end
            12'd743 : begin twiddle_real = 16'sd13691; twiddle_imag = -(16'sd29771); end
            12'd744 : begin twiddle_real = 16'sd13645; twiddle_imag = -(16'sd29792); end
            12'd745 : begin twiddle_real = 16'sd13599; twiddle_imag = -(16'sd29813); end
            12'd746 : begin twiddle_real = 16'sd13554; twiddle_imag = -(16'sd29834); end
            12'd747 : begin twiddle_real = 16'sd13508; twiddle_imag = -(16'sd29855); end
            12'd748 : begin twiddle_real = 16'sd13462; twiddle_imag = -(16'sd29875); end
            12'd749 : begin twiddle_real = 16'sd13416; twiddle_imag = -(16'sd29896); end
            12'd750 : begin twiddle_real = 16'sd13370; twiddle_imag = -(16'sd29916); end
            12'd751 : begin twiddle_real = 16'sd13324; twiddle_imag = -(16'sd29937); end
            12'd752 : begin twiddle_real = 16'sd13278; twiddle_imag = -(16'sd29957); end
            12'd753 : begin twiddle_real = 16'sd13232; twiddle_imag = -(16'sd29978); end
            12'd754 : begin twiddle_real = 16'sd13186; twiddle_imag = -(16'sd29998); end
            12'd755 : begin twiddle_real = 16'sd13140; twiddle_imag = -(16'sd30018); end
            12'd756 : begin twiddle_real = 16'sd13094; twiddle_imag = -(16'sd30038); end
            12'd757 : begin twiddle_real = 16'sd13048; twiddle_imag = -(16'sd30058); end
            12'd758 : begin twiddle_real = 16'sd13002; twiddle_imag = -(16'sd30078); end
            12'd759 : begin twiddle_real = 16'sd12956; twiddle_imag = -(16'sd30098); end
            12'd760 : begin twiddle_real = 16'sd12910; twiddle_imag = -(16'sd30118); end
            12'd761 : begin twiddle_real = 16'sd12864; twiddle_imag = -(16'sd30138); end
            12'd762 : begin twiddle_real = 16'sd12817; twiddle_imag = -(16'sd30157); end
            12'd763 : begin twiddle_real = 16'sd12771; twiddle_imag = -(16'sd30177); end
            12'd764 : begin twiddle_real = 16'sd12725; twiddle_imag = -(16'sd30197); end
            12'd765 : begin twiddle_real = 16'sd12678; twiddle_imag = -(16'sd30216); end
            12'd766 : begin twiddle_real = 16'sd12632; twiddle_imag = -(16'sd30236); end
            12'd767 : begin twiddle_real = 16'sd12586; twiddle_imag = -(16'sd30255); end
            12'd768 : begin twiddle_real = 16'sd12539; twiddle_imag = -(16'sd30274); end
            12'd769 : begin twiddle_real = 16'sd12493; twiddle_imag = -(16'sd30293); end
            12'd770 : begin twiddle_real = 16'sd12446; twiddle_imag = -(16'sd30313); end
            12'd771 : begin twiddle_real = 16'sd12400; twiddle_imag = -(16'sd30332); end
            12'd772 : begin twiddle_real = 16'sd12353; twiddle_imag = -(16'sd30351); end
            12'd773 : begin twiddle_real = 16'sd12307; twiddle_imag = -(16'sd30369); end
            12'd774 : begin twiddle_real = 16'sd12260; twiddle_imag = -(16'sd30388); end
            12'd775 : begin twiddle_real = 16'sd12213; twiddle_imag = -(16'sd30407); end
            12'd776 : begin twiddle_real = 16'sd12167; twiddle_imag = -(16'sd30426); end
            12'd777 : begin twiddle_real = 16'sd12120; twiddle_imag = -(16'sd30444); end
            12'd778 : begin twiddle_real = 16'sd12073; twiddle_imag = -(16'sd30463); end
            12'd779 : begin twiddle_real = 16'sd12027; twiddle_imag = -(16'sd30481); end
            12'd780 : begin twiddle_real = 16'sd11980; twiddle_imag = -(16'sd30500); end
            12'd781 : begin twiddle_real = 16'sd11933; twiddle_imag = -(16'sd30518); end
            12'd782 : begin twiddle_real = 16'sd11886; twiddle_imag = -(16'sd30536); end
            12'd783 : begin twiddle_real = 16'sd11839; twiddle_imag = -(16'sd30555); end
            12'd784 : begin twiddle_real = 16'sd11793; twiddle_imag = -(16'sd30573); end
            12'd785 : begin twiddle_real = 16'sd11746; twiddle_imag = -(16'sd30591); end
            12'd786 : begin twiddle_real = 16'sd11699; twiddle_imag = -(16'sd30609); end
            12'd787 : begin twiddle_real = 16'sd11652; twiddle_imag = -(16'sd30627); end
            12'd788 : begin twiddle_real = 16'sd11605; twiddle_imag = -(16'sd30645); end
            12'd789 : begin twiddle_real = 16'sd11558; twiddle_imag = -(16'sd30662); end
            12'd790 : begin twiddle_real = 16'sd11511; twiddle_imag = -(16'sd30680); end
            12'd791 : begin twiddle_real = 16'sd11464; twiddle_imag = -(16'sd30698); end
            12'd792 : begin twiddle_real = 16'sd11416; twiddle_imag = -(16'sd30715); end
            12'd793 : begin twiddle_real = 16'sd11369; twiddle_imag = -(16'sd30733); end
            12'd794 : begin twiddle_real = 16'sd11322; twiddle_imag = -(16'sd30750); end
            12'd795 : begin twiddle_real = 16'sd11275; twiddle_imag = -(16'sd30767); end
            12'd796 : begin twiddle_real = 16'sd11228; twiddle_imag = -(16'sd30785); end
            12'd797 : begin twiddle_real = 16'sd11181; twiddle_imag = -(16'sd30802); end
            12'd798 : begin twiddle_real = 16'sd11133; twiddle_imag = -(16'sd30819); end
            12'd799 : begin twiddle_real = 16'sd11086; twiddle_imag = -(16'sd30836); end
            12'd800 : begin twiddle_real = 16'sd11039; twiddle_imag = -(16'sd30853); end
            12'd801 : begin twiddle_real = 16'sd10991; twiddle_imag = -(16'sd30870); end
            12'd802 : begin twiddle_real = 16'sd10944; twiddle_imag = -(16'sd30887); end
            12'd803 : begin twiddle_real = 16'sd10897; twiddle_imag = -(16'sd30903); end
            12'd804 : begin twiddle_real = 16'sd10849; twiddle_imag = -(16'sd30920); end
            12'd805 : begin twiddle_real = 16'sd10802; twiddle_imag = -(16'sd30937); end
            12'd806 : begin twiddle_real = 16'sd10754; twiddle_imag = -(16'sd30953); end
            12'd807 : begin twiddle_real = 16'sd10707; twiddle_imag = -(16'sd30970); end
            12'd808 : begin twiddle_real = 16'sd10659; twiddle_imag = -(16'sd30986); end
            12'd809 : begin twiddle_real = 16'sd10612; twiddle_imag = -(16'sd31002); end
            12'd810 : begin twiddle_real = 16'sd10564; twiddle_imag = -(16'sd31019); end
            12'd811 : begin twiddle_real = 16'sd10517; twiddle_imag = -(16'sd31035); end
            12'd812 : begin twiddle_real = 16'sd10469; twiddle_imag = -(16'sd31051); end
            12'd813 : begin twiddle_real = 16'sd10421; twiddle_imag = -(16'sd31067); end
            12'd814 : begin twiddle_real = 16'sd10374; twiddle_imag = -(16'sd31083); end
            12'd815 : begin twiddle_real = 16'sd10326; twiddle_imag = -(16'sd31099); end
            12'd816 : begin twiddle_real = 16'sd10278; twiddle_imag = -(16'sd31115); end
            12'd817 : begin twiddle_real = 16'sd10230; twiddle_imag = -(16'sd31130); end
            12'd818 : begin twiddle_real = 16'sd10183; twiddle_imag = -(16'sd31146); end
            12'd819 : begin twiddle_real = 16'sd10135; twiddle_imag = -(16'sd31162); end
            12'd820 : begin twiddle_real = 16'sd10087; twiddle_imag = -(16'sd31177); end
            12'd821 : begin twiddle_real = 16'sd10039; twiddle_imag = -(16'sd31193); end
            12'd822 : begin twiddle_real = 16'sd9991; twiddle_imag = -(16'sd31208); end
            12'd823 : begin twiddle_real = 16'sd9944; twiddle_imag = -(16'sd31223); end
            12'd824 : begin twiddle_real = 16'sd9896; twiddle_imag = -(16'sd31238); end
            12'd825 : begin twiddle_real = 16'sd9848; twiddle_imag = -(16'sd31254); end
            12'd826 : begin twiddle_real = 16'sd9800; twiddle_imag = -(16'sd31269); end
            12'd827 : begin twiddle_real = 16'sd9752; twiddle_imag = -(16'sd31284); end
            12'd828 : begin twiddle_real = 16'sd9704; twiddle_imag = -(16'sd31299); end
            12'd829 : begin twiddle_real = 16'sd9656; twiddle_imag = -(16'sd31313); end
            12'd830 : begin twiddle_real = 16'sd9608; twiddle_imag = -(16'sd31328); end
            12'd831 : begin twiddle_real = 16'sd9560; twiddle_imag = -(16'sd31343); end
            12'd832 : begin twiddle_real = 16'sd9512; twiddle_imag = -(16'sd31358); end
            12'd833 : begin twiddle_real = 16'sd9463; twiddle_imag = -(16'sd31372); end
            12'd834 : begin twiddle_real = 16'sd9415; twiddle_imag = -(16'sd31387); end
            12'd835 : begin twiddle_real = 16'sd9367; twiddle_imag = -(16'sd31401); end
            12'd836 : begin twiddle_real = 16'sd9319; twiddle_imag = -(16'sd31415); end
            12'd837 : begin twiddle_real = 16'sd9271; twiddle_imag = -(16'sd31430); end
            12'd838 : begin twiddle_real = 16'sd9223; twiddle_imag = -(16'sd31444); end
            12'd839 : begin twiddle_real = 16'sd9174; twiddle_imag = -(16'sd31458); end
            12'd840 : begin twiddle_real = 16'sd9126; twiddle_imag = -(16'sd31472); end
            12'd841 : begin twiddle_real = 16'sd9078; twiddle_imag = -(16'sd31486); end
            12'd842 : begin twiddle_real = 16'sd9029; twiddle_imag = -(16'sd31500); end
            12'd843 : begin twiddle_real = 16'sd8981; twiddle_imag = -(16'sd31514); end
            12'd844 : begin twiddle_real = 16'sd8933; twiddle_imag = -(16'sd31527); end
            12'd845 : begin twiddle_real = 16'sd8884; twiddle_imag = -(16'sd31541); end
            12'd846 : begin twiddle_real = 16'sd8836; twiddle_imag = -(16'sd31555); end
            12'd847 : begin twiddle_real = 16'sd8788; twiddle_imag = -(16'sd31568); end
            12'd848 : begin twiddle_real = 16'sd8739; twiddle_imag = -(16'sd31582); end
            12'd849 : begin twiddle_real = 16'sd8691; twiddle_imag = -(16'sd31595); end
            12'd850 : begin twiddle_real = 16'sd8642; twiddle_imag = -(16'sd31608); end
            12'd851 : begin twiddle_real = 16'sd8594; twiddle_imag = -(16'sd31621); end
            12'd852 : begin twiddle_real = 16'sd8545; twiddle_imag = -(16'sd31635); end
            12'd853 : begin twiddle_real = 16'sd8497; twiddle_imag = -(16'sd31648); end
            12'd854 : begin twiddle_real = 16'sd8448; twiddle_imag = -(16'sd31661); end
            12'd855 : begin twiddle_real = 16'sd8400; twiddle_imag = -(16'sd31674); end
            12'd856 : begin twiddle_real = 16'sd8351; twiddle_imag = -(16'sd31686); end
            12'd857 : begin twiddle_real = 16'sd8302; twiddle_imag = -(16'sd31699); end
            12'd858 : begin twiddle_real = 16'sd8254; twiddle_imag = -(16'sd31712); end
            12'd859 : begin twiddle_real = 16'sd8205; twiddle_imag = -(16'sd31724); end
            12'd860 : begin twiddle_real = 16'sd8156; twiddle_imag = -(16'sd31737); end
            12'd861 : begin twiddle_real = 16'sd8108; twiddle_imag = -(16'sd31750); end
            12'd862 : begin twiddle_real = 16'sd8059; twiddle_imag = -(16'sd31762); end
            12'd863 : begin twiddle_real = 16'sd8010; twiddle_imag = -(16'sd31774); end
            12'd864 : begin twiddle_real = 16'sd7961; twiddle_imag = -(16'sd31786); end
            12'd865 : begin twiddle_real = 16'sd7913; twiddle_imag = -(16'sd31799); end
            12'd866 : begin twiddle_real = 16'sd7864; twiddle_imag = -(16'sd31811); end
            12'd867 : begin twiddle_real = 16'sd7815; twiddle_imag = -(16'sd31823); end
            12'd868 : begin twiddle_real = 16'sd7766; twiddle_imag = -(16'sd31835); end
            12'd869 : begin twiddle_real = 16'sd7717; twiddle_imag = -(16'sd31847); end
            12'd870 : begin twiddle_real = 16'sd7669; twiddle_imag = -(16'sd31858); end
            12'd871 : begin twiddle_real = 16'sd7620; twiddle_imag = -(16'sd31870); end
            12'd872 : begin twiddle_real = 16'sd7571; twiddle_imag = -(16'sd31882); end
            12'd873 : begin twiddle_real = 16'sd7522; twiddle_imag = -(16'sd31893); end
            12'd874 : begin twiddle_real = 16'sd7473; twiddle_imag = -(16'sd31905); end
            12'd875 : begin twiddle_real = 16'sd7424; twiddle_imag = -(16'sd31916); end
            12'd876 : begin twiddle_real = 16'sd7375; twiddle_imag = -(16'sd31928); end
            12'd877 : begin twiddle_real = 16'sd7326; twiddle_imag = -(16'sd31939); end
            12'd878 : begin twiddle_real = 16'sd7277; twiddle_imag = -(16'sd31950); end
            12'd879 : begin twiddle_real = 16'sd7228; twiddle_imag = -(16'sd31961); end
            12'd880 : begin twiddle_real = 16'sd7179; twiddle_imag = -(16'sd31972); end
            12'd881 : begin twiddle_real = 16'sd7130; twiddle_imag = -(16'sd31983); end
            12'd882 : begin twiddle_real = 16'sd7081; twiddle_imag = -(16'sd31994); end
            12'd883 : begin twiddle_real = 16'sd7032; twiddle_imag = -(16'sd32005); end
            12'd884 : begin twiddle_real = 16'sd6983; twiddle_imag = -(16'sd32016); end
            12'd885 : begin twiddle_real = 16'sd6934; twiddle_imag = -(16'sd32026); end
            12'd886 : begin twiddle_real = 16'sd6884; twiddle_imag = -(16'sd32037); end
            12'd887 : begin twiddle_real = 16'sd6835; twiddle_imag = -(16'sd32048); end
            12'd888 : begin twiddle_real = 16'sd6786; twiddle_imag = -(16'sd32058); end
            12'd889 : begin twiddle_real = 16'sd6737; twiddle_imag = -(16'sd32068); end
            12'd890 : begin twiddle_real = 16'sd6688; twiddle_imag = -(16'sd32079); end
            12'd891 : begin twiddle_real = 16'sd6639; twiddle_imag = -(16'sd32089); end
            12'd892 : begin twiddle_real = 16'sd6589; twiddle_imag = -(16'sd32099); end
            12'd893 : begin twiddle_real = 16'sd6540; twiddle_imag = -(16'sd32109); end
            12'd894 : begin twiddle_real = 16'sd6491; twiddle_imag = -(16'sd32119); end
            12'd895 : begin twiddle_real = 16'sd6442; twiddle_imag = -(16'sd32129); end
            12'd896 : begin twiddle_real = 16'sd6392; twiddle_imag = -(16'sd32139); end
            12'd897 : begin twiddle_real = 16'sd6343; twiddle_imag = -(16'sd32149); end
            12'd898 : begin twiddle_real = 16'sd6294; twiddle_imag = -(16'sd32158); end
            12'd899 : begin twiddle_real = 16'sd6244; twiddle_imag = -(16'sd32168); end
            12'd900 : begin twiddle_real = 16'sd6195; twiddle_imag = -(16'sd32177); end
            12'd901 : begin twiddle_real = 16'sd6146; twiddle_imag = -(16'sd32187); end
            12'd902 : begin twiddle_real = 16'sd6096; twiddle_imag = -(16'sd32196); end
            12'd903 : begin twiddle_real = 16'sd6047; twiddle_imag = -(16'sd32206); end
            12'd904 : begin twiddle_real = 16'sd5997; twiddle_imag = -(16'sd32215); end
            12'd905 : begin twiddle_real = 16'sd5948; twiddle_imag = -(16'sd32224); end
            12'd906 : begin twiddle_real = 16'sd5898; twiddle_imag = -(16'sd32233); end
            12'd907 : begin twiddle_real = 16'sd5849; twiddle_imag = -(16'sd32242); end
            12'd908 : begin twiddle_real = 16'sd5800; twiddle_imag = -(16'sd32251); end
            12'd909 : begin twiddle_real = 16'sd5750; twiddle_imag = -(16'sd32260); end
            12'd910 : begin twiddle_real = 16'sd5701; twiddle_imag = -(16'sd32269); end
            12'd911 : begin twiddle_real = 16'sd5651; twiddle_imag = -(16'sd32277); end
            12'd912 : begin twiddle_real = 16'sd5602; twiddle_imag = -(16'sd32286); end
            12'd913 : begin twiddle_real = 16'sd5552; twiddle_imag = -(16'sd32295); end
            12'd914 : begin twiddle_real = 16'sd5503; twiddle_imag = -(16'sd32303); end
            12'd915 : begin twiddle_real = 16'sd5453; twiddle_imag = -(16'sd32312); end
            12'd916 : begin twiddle_real = 16'sd5403; twiddle_imag = -(16'sd32320); end
            12'd917 : begin twiddle_real = 16'sd5354; twiddle_imag = -(16'sd32328); end
            12'd918 : begin twiddle_real = 16'sd5304; twiddle_imag = -(16'sd32336); end
            12'd919 : begin twiddle_real = 16'sd5255; twiddle_imag = -(16'sd32344); end
            12'd920 : begin twiddle_real = 16'sd5205; twiddle_imag = -(16'sd32352); end
            12'd921 : begin twiddle_real = 16'sd5155; twiddle_imag = -(16'sd32360); end
            12'd922 : begin twiddle_real = 16'sd5106; twiddle_imag = -(16'sd32368); end
            12'd923 : begin twiddle_real = 16'sd5056; twiddle_imag = -(16'sd32376); end
            12'd924 : begin twiddle_real = 16'sd5006; twiddle_imag = -(16'sd32384); end
            12'd925 : begin twiddle_real = 16'sd4957; twiddle_imag = -(16'sd32391); end
            12'd926 : begin twiddle_real = 16'sd4907; twiddle_imag = -(16'sd32399); end
            12'd927 : begin twiddle_real = 16'sd4857; twiddle_imag = -(16'sd32406); end
            12'd928 : begin twiddle_real = 16'sd4808; twiddle_imag = -(16'sd32414); end
            12'd929 : begin twiddle_real = 16'sd4758; twiddle_imag = -(16'sd32421); end
            12'd930 : begin twiddle_real = 16'sd4708; twiddle_imag = -(16'sd32428); end
            12'd931 : begin twiddle_real = 16'sd4658; twiddle_imag = -(16'sd32436); end
            12'd932 : begin twiddle_real = 16'sd4609; twiddle_imag = -(16'sd32443); end
            12'd933 : begin twiddle_real = 16'sd4559; twiddle_imag = -(16'sd32450); end
            12'd934 : begin twiddle_real = 16'sd4509; twiddle_imag = -(16'sd32457); end
            12'd935 : begin twiddle_real = 16'sd4459; twiddle_imag = -(16'sd32464); end
            12'd936 : begin twiddle_real = 16'sd4409; twiddle_imag = -(16'sd32470); end
            12'd937 : begin twiddle_real = 16'sd4360; twiddle_imag = -(16'sd32477); end
            12'd938 : begin twiddle_real = 16'sd4310; twiddle_imag = -(16'sd32484); end
            12'd939 : begin twiddle_real = 16'sd4260; twiddle_imag = -(16'sd32490); end
            12'd940 : begin twiddle_real = 16'sd4210; twiddle_imag = -(16'sd32497); end
            12'd941 : begin twiddle_real = 16'sd4160; twiddle_imag = -(16'sd32503); end
            12'd942 : begin twiddle_real = 16'sd4110; twiddle_imag = -(16'sd32510); end
            12'd943 : begin twiddle_real = 16'sd4061; twiddle_imag = -(16'sd32516); end
            12'd944 : begin twiddle_real = 16'sd4011; twiddle_imag = -(16'sd32522); end
            12'd945 : begin twiddle_real = 16'sd3961; twiddle_imag = -(16'sd32528); end
            12'd946 : begin twiddle_real = 16'sd3911; twiddle_imag = -(16'sd32534); end
            12'd947 : begin twiddle_real = 16'sd3861; twiddle_imag = -(16'sd32540); end
            12'd948 : begin twiddle_real = 16'sd3811; twiddle_imag = -(16'sd32546); end
            12'd949 : begin twiddle_real = 16'sd3761; twiddle_imag = -(16'sd32552); end
            12'd950 : begin twiddle_real = 16'sd3711; twiddle_imag = -(16'sd32558); end
            12'd951 : begin twiddle_real = 16'sd3661; twiddle_imag = -(16'sd32563); end
            12'd952 : begin twiddle_real = 16'sd3611; twiddle_imag = -(16'sd32569); end
            12'd953 : begin twiddle_real = 16'sd3561; twiddle_imag = -(16'sd32574); end
            12'd954 : begin twiddle_real = 16'sd3511; twiddle_imag = -(16'sd32580); end
            12'd955 : begin twiddle_real = 16'sd3461; twiddle_imag = -(16'sd32585); end
            12'd956 : begin twiddle_real = 16'sd3411; twiddle_imag = -(16'sd32590); end
            12'd957 : begin twiddle_real = 16'sd3361; twiddle_imag = -(16'sd32596); end
            12'd958 : begin twiddle_real = 16'sd3311; twiddle_imag = -(16'sd32601); end
            12'd959 : begin twiddle_real = 16'sd3261; twiddle_imag = -(16'sd32606); end
            12'd960 : begin twiddle_real = 16'sd3211; twiddle_imag = -(16'sd32611); end
            12'd961 : begin twiddle_real = 16'sd3161; twiddle_imag = -(16'sd32616); end
            12'd962 : begin twiddle_real = 16'sd3111; twiddle_imag = -(16'sd32620); end
            12'd963 : begin twiddle_real = 16'sd3061; twiddle_imag = -(16'sd32625); end
            12'd964 : begin twiddle_real = 16'sd3011; twiddle_imag = -(16'sd32630); end
            12'd965 : begin twiddle_real = 16'sd2961; twiddle_imag = -(16'sd32634); end
            12'd966 : begin twiddle_real = 16'sd2911; twiddle_imag = -(16'sd32639); end
            12'd967 : begin twiddle_real = 16'sd2861; twiddle_imag = -(16'sd32643); end
            12'd968 : begin twiddle_real = 16'sd2811; twiddle_imag = -(16'sd32648); end
            12'd969 : begin twiddle_real = 16'sd2761; twiddle_imag = -(16'sd32652); end
            12'd970 : begin twiddle_real = 16'sd2711; twiddle_imag = -(16'sd32656); end
            12'd971 : begin twiddle_real = 16'sd2661; twiddle_imag = -(16'sd32660); end
            12'd972 : begin twiddle_real = 16'sd2611; twiddle_imag = -(16'sd32664); end
            12'd973 : begin twiddle_real = 16'sd2560; twiddle_imag = -(16'sd32668); end
            12'd974 : begin twiddle_real = 16'sd2510; twiddle_imag = -(16'sd32672); end
            12'd975 : begin twiddle_real = 16'sd2460; twiddle_imag = -(16'sd32676); end
            12'd976 : begin twiddle_real = 16'sd2410; twiddle_imag = -(16'sd32680); end
            12'd977 : begin twiddle_real = 16'sd2360; twiddle_imag = -(16'sd32683); end
            12'd978 : begin twiddle_real = 16'sd2310; twiddle_imag = -(16'sd32687); end
            12'd979 : begin twiddle_real = 16'sd2260; twiddle_imag = -(16'sd32690); end
            12'd980 : begin twiddle_real = 16'sd2210; twiddle_imag = -(16'sd32694); end
            12'd981 : begin twiddle_real = 16'sd2159; twiddle_imag = -(16'sd32697); end
            12'd982 : begin twiddle_real = 16'sd2109; twiddle_imag = -(16'sd32701); end
            12'd983 : begin twiddle_real = 16'sd2059; twiddle_imag = -(16'sd32704); end
            12'd984 : begin twiddle_real = 16'sd2009; twiddle_imag = -(16'sd32707); end
            12'd985 : begin twiddle_real = 16'sd1959; twiddle_imag = -(16'sd32710); end
            12'd986 : begin twiddle_real = 16'sd1909; twiddle_imag = -(16'sd32713); end
            12'd987 : begin twiddle_real = 16'sd1858; twiddle_imag = -(16'sd32716); end
            12'd988 : begin twiddle_real = 16'sd1808; twiddle_imag = -(16'sd32719); end
            12'd989 : begin twiddle_real = 16'sd1758; twiddle_imag = -(16'sd32721); end
            12'd990 : begin twiddle_real = 16'sd1708; twiddle_imag = -(16'sd32724); end
            12'd991 : begin twiddle_real = 16'sd1658; twiddle_imag = -(16'sd32727); end
            12'd992 : begin twiddle_real = 16'sd1607; twiddle_imag = -(16'sd32729); end
            12'd993 : begin twiddle_real = 16'sd1557; twiddle_imag = -(16'sd32731); end
            12'd994 : begin twiddle_real = 16'sd1507; twiddle_imag = -(16'sd32734); end
            12'd995 : begin twiddle_real = 16'sd1457; twiddle_imag = -(16'sd32736); end
            12'd996 : begin twiddle_real = 16'sd1407; twiddle_imag = -(16'sd32738); end
            12'd997 : begin twiddle_real = 16'sd1356; twiddle_imag = -(16'sd32740); end
            12'd998 : begin twiddle_real = 16'sd1306; twiddle_imag = -(16'sd32742); end
            12'd999 : begin twiddle_real = 16'sd1256; twiddle_imag = -(16'sd32744); end
            12'd1000: begin twiddle_real = 16'sd1206; twiddle_imag = -(16'sd32746); end
            12'd1001: begin twiddle_real = 16'sd1155; twiddle_imag = -(16'sd32748); end
            12'd1002: begin twiddle_real = 16'sd1105; twiddle_imag = -(16'sd32750); end
            12'd1003: begin twiddle_real = 16'sd1055; twiddle_imag = -(16'sd32751); end
            12'd1004: begin twiddle_real = 16'sd1005; twiddle_imag = -(16'sd32753); end
            12'd1005: begin twiddle_real = 16'sd954; twiddle_imag = -(16'sd32755); end
            12'd1006: begin twiddle_real = 16'sd904; twiddle_imag = -(16'sd32756); end
            12'd1007: begin twiddle_real = 16'sd854; twiddle_imag = -(16'sd32757); end
            12'd1008: begin twiddle_real = 16'sd804; twiddle_imag = -(16'sd32759); end
            12'd1009: begin twiddle_real = 16'sd753; twiddle_imag = -(16'sd32760); end
            12'd1010: begin twiddle_real = 16'sd703; twiddle_imag = -(16'sd32761); end
            12'd1011: begin twiddle_real = 16'sd653; twiddle_imag = -(16'sd32762); end
            12'd1012: begin twiddle_real = 16'sd603; twiddle_imag = -(16'sd32763); end
            12'd1013: begin twiddle_real = 16'sd552; twiddle_imag = -(16'sd32764); end
            12'd1014: begin twiddle_real = 16'sd502; twiddle_imag = -(16'sd32765); end
            12'd1015: begin twiddle_real = 16'sd452; twiddle_imag = -(16'sd32765); end
            12'd1016: begin twiddle_real = 16'sd402; twiddle_imag = -(16'sd32766); end
            12'd1017: begin twiddle_real = 16'sd351; twiddle_imag = -(16'sd32767); end
            12'd1018: begin twiddle_real = 16'sd301; twiddle_imag = -(16'sd32767); end
            12'd1019: begin twiddle_real = 16'sd251; twiddle_imag = -(16'sd32767); end
            12'd1020: begin twiddle_real = 16'sd201; twiddle_imag = -(16'sd32767); end
            12'd1021: begin twiddle_real = 16'sd150; twiddle_imag = -(16'sd32767); end
            12'd1022: begin twiddle_real = 16'sd100; twiddle_imag = -(16'sd32767); end
            12'd1023: begin twiddle_real = 16'sd50; twiddle_imag = -(16'sd32767); end
            12'd1024: begin twiddle_real = 16'sd0; twiddle_imag = -(16'sd32767); end
            12'd1025: begin twiddle_real = -(16'sd51); twiddle_imag = -(16'sd32767); end
            12'd1026: begin twiddle_real = -(16'sd101); twiddle_imag = -(16'sd32767); end
            12'd1027: begin twiddle_real = -(16'sd151); twiddle_imag = -(16'sd32767); end
            12'd1028: begin twiddle_real = -(16'sd202); twiddle_imag = -(16'sd32767); end
            12'd1029: begin twiddle_real = -(16'sd252); twiddle_imag = -(16'sd32767); end
            12'd1030: begin twiddle_real = -(16'sd302); twiddle_imag = -(16'sd32767); end
            12'd1031: begin twiddle_real = -(16'sd352); twiddle_imag = -(16'sd32767); end
            12'd1032: begin twiddle_real = -(16'sd403); twiddle_imag = -(16'sd32766); end
            12'd1033: begin twiddle_real = -(16'sd453); twiddle_imag = -(16'sd32765); end
            12'd1034: begin twiddle_real = -(16'sd503); twiddle_imag = -(16'sd32765); end
            12'd1035: begin twiddle_real = -(16'sd553); twiddle_imag = -(16'sd32764); end
            12'd1036: begin twiddle_real = -(16'sd604); twiddle_imag = -(16'sd32763); end
            12'd1037: begin twiddle_real = -(16'sd654); twiddle_imag = -(16'sd32762); end
            12'd1038: begin twiddle_real = -(16'sd704); twiddle_imag = -(16'sd32761); end
            12'd1039: begin twiddle_real = -(16'sd754); twiddle_imag = -(16'sd32760); end
            12'd1040: begin twiddle_real = -(16'sd805); twiddle_imag = -(16'sd32759); end
            12'd1041: begin twiddle_real = -(16'sd855); twiddle_imag = -(16'sd32757); end
            12'd1042: begin twiddle_real = -(16'sd905); twiddle_imag = -(16'sd32756); end
            12'd1043: begin twiddle_real = -(16'sd955); twiddle_imag = -(16'sd32755); end
            12'd1044: begin twiddle_real = -(16'sd1006); twiddle_imag = -(16'sd32753); end
            12'd1045: begin twiddle_real = -(16'sd1056); twiddle_imag = -(16'sd32751); end
            12'd1046: begin twiddle_real = -(16'sd1106); twiddle_imag = -(16'sd32750); end
            12'd1047: begin twiddle_real = -(16'sd1156); twiddle_imag = -(16'sd32748); end
            12'd1048: begin twiddle_real = -(16'sd1207); twiddle_imag = -(16'sd32746); end
            12'd1049: begin twiddle_real = -(16'sd1257); twiddle_imag = -(16'sd32744); end
            12'd1050: begin twiddle_real = -(16'sd1307); twiddle_imag = -(16'sd32742); end
            12'd1051: begin twiddle_real = -(16'sd1357); twiddle_imag = -(16'sd32740); end
            12'd1052: begin twiddle_real = -(16'sd1408); twiddle_imag = -(16'sd32738); end
            12'd1053: begin twiddle_real = -(16'sd1458); twiddle_imag = -(16'sd32736); end
            12'd1054: begin twiddle_real = -(16'sd1508); twiddle_imag = -(16'sd32734); end
            12'd1055: begin twiddle_real = -(16'sd1558); twiddle_imag = -(16'sd32731); end
            12'd1056: begin twiddle_real = -(16'sd1608); twiddle_imag = -(16'sd32729); end
            12'd1057: begin twiddle_real = -(16'sd1659); twiddle_imag = -(16'sd32727); end
            12'd1058: begin twiddle_real = -(16'sd1709); twiddle_imag = -(16'sd32724); end
            12'd1059: begin twiddle_real = -(16'sd1759); twiddle_imag = -(16'sd32721); end
            12'd1060: begin twiddle_real = -(16'sd1809); twiddle_imag = -(16'sd32719); end
            12'd1061: begin twiddle_real = -(16'sd1859); twiddle_imag = -(16'sd32716); end
            12'd1062: begin twiddle_real = -(16'sd1910); twiddle_imag = -(16'sd32713); end
            12'd1063: begin twiddle_real = -(16'sd1960); twiddle_imag = -(16'sd32710); end
            12'd1064: begin twiddle_real = -(16'sd2010); twiddle_imag = -(16'sd32707); end
            12'd1065: begin twiddle_real = -(16'sd2060); twiddle_imag = -(16'sd32704); end
            12'd1066: begin twiddle_real = -(16'sd2110); twiddle_imag = -(16'sd32701); end
            12'd1067: begin twiddle_real = -(16'sd2160); twiddle_imag = -(16'sd32697); end
            12'd1068: begin twiddle_real = -(16'sd2211); twiddle_imag = -(16'sd32694); end
            12'd1069: begin twiddle_real = -(16'sd2261); twiddle_imag = -(16'sd32690); end
            12'd1070: begin twiddle_real = -(16'sd2311); twiddle_imag = -(16'sd32687); end
            12'd1071: begin twiddle_real = -(16'sd2361); twiddle_imag = -(16'sd32683); end
            12'd1072: begin twiddle_real = -(16'sd2411); twiddle_imag = -(16'sd32680); end
            12'd1073: begin twiddle_real = -(16'sd2461); twiddle_imag = -(16'sd32676); end
            12'd1074: begin twiddle_real = -(16'sd2511); twiddle_imag = -(16'sd32672); end
            12'd1075: begin twiddle_real = -(16'sd2561); twiddle_imag = -(16'sd32668); end
            12'd1076: begin twiddle_real = -(16'sd2612); twiddle_imag = -(16'sd32664); end
            12'd1077: begin twiddle_real = -(16'sd2662); twiddle_imag = -(16'sd32660); end
            12'd1078: begin twiddle_real = -(16'sd2712); twiddle_imag = -(16'sd32656); end
            12'd1079: begin twiddle_real = -(16'sd2762); twiddle_imag = -(16'sd32652); end
            12'd1080: begin twiddle_real = -(16'sd2812); twiddle_imag = -(16'sd32648); end
            12'd1081: begin twiddle_real = -(16'sd2862); twiddle_imag = -(16'sd32643); end
            12'd1082: begin twiddle_real = -(16'sd2912); twiddle_imag = -(16'sd32639); end
            12'd1083: begin twiddle_real = -(16'sd2962); twiddle_imag = -(16'sd32634); end
            12'd1084: begin twiddle_real = -(16'sd3012); twiddle_imag = -(16'sd32630); end
            12'd1085: begin twiddle_real = -(16'sd3062); twiddle_imag = -(16'sd32625); end
            12'd1086: begin twiddle_real = -(16'sd3112); twiddle_imag = -(16'sd32620); end
            12'd1087: begin twiddle_real = -(16'sd3162); twiddle_imag = -(16'sd32616); end
            12'd1088: begin twiddle_real = -(16'sd3212); twiddle_imag = -(16'sd32611); end
            12'd1089: begin twiddle_real = -(16'sd3262); twiddle_imag = -(16'sd32606); end
            12'd1090: begin twiddle_real = -(16'sd3312); twiddle_imag = -(16'sd32601); end
            12'd1091: begin twiddle_real = -(16'sd3362); twiddle_imag = -(16'sd32596); end
            12'd1092: begin twiddle_real = -(16'sd3412); twiddle_imag = -(16'sd32590); end
            12'd1093: begin twiddle_real = -(16'sd3462); twiddle_imag = -(16'sd32585); end
            12'd1094: begin twiddle_real = -(16'sd3512); twiddle_imag = -(16'sd32580); end
            12'd1095: begin twiddle_real = -(16'sd3562); twiddle_imag = -(16'sd32574); end
            12'd1096: begin twiddle_real = -(16'sd3612); twiddle_imag = -(16'sd32569); end
            12'd1097: begin twiddle_real = -(16'sd3662); twiddle_imag = -(16'sd32563); end
            12'd1098: begin twiddle_real = -(16'sd3712); twiddle_imag = -(16'sd32558); end
            12'd1099: begin twiddle_real = -(16'sd3762); twiddle_imag = -(16'sd32552); end
            12'd1100: begin twiddle_real = -(16'sd3812); twiddle_imag = -(16'sd32546); end
            12'd1101: begin twiddle_real = -(16'sd3862); twiddle_imag = -(16'sd32540); end
            12'd1102: begin twiddle_real = -(16'sd3912); twiddle_imag = -(16'sd32534); end
            12'd1103: begin twiddle_real = -(16'sd3962); twiddle_imag = -(16'sd32528); end
            12'd1104: begin twiddle_real = -(16'sd4012); twiddle_imag = -(16'sd32522); end
            12'd1105: begin twiddle_real = -(16'sd4062); twiddle_imag = -(16'sd32516); end
            12'd1106: begin twiddle_real = -(16'sd4111); twiddle_imag = -(16'sd32510); end
            12'd1107: begin twiddle_real = -(16'sd4161); twiddle_imag = -(16'sd32503); end
            12'd1108: begin twiddle_real = -(16'sd4211); twiddle_imag = -(16'sd32497); end
            12'd1109: begin twiddle_real = -(16'sd4261); twiddle_imag = -(16'sd32490); end
            12'd1110: begin twiddle_real = -(16'sd4311); twiddle_imag = -(16'sd32484); end
            12'd1111: begin twiddle_real = -(16'sd4361); twiddle_imag = -(16'sd32477); end
            12'd1112: begin twiddle_real = -(16'sd4410); twiddle_imag = -(16'sd32470); end
            12'd1113: begin twiddle_real = -(16'sd4460); twiddle_imag = -(16'sd32464); end
            12'd1114: begin twiddle_real = -(16'sd4510); twiddle_imag = -(16'sd32457); end
            12'd1115: begin twiddle_real = -(16'sd4560); twiddle_imag = -(16'sd32450); end
            12'd1116: begin twiddle_real = -(16'sd4610); twiddle_imag = -(16'sd32443); end
            12'd1117: begin twiddle_real = -(16'sd4659); twiddle_imag = -(16'sd32436); end
            12'd1118: begin twiddle_real = -(16'sd4709); twiddle_imag = -(16'sd32428); end
            12'd1119: begin twiddle_real = -(16'sd4759); twiddle_imag = -(16'sd32421); end
            12'd1120: begin twiddle_real = -(16'sd4809); twiddle_imag = -(16'sd32414); end
            12'd1121: begin twiddle_real = -(16'sd4858); twiddle_imag = -(16'sd32406); end
            12'd1122: begin twiddle_real = -(16'sd4908); twiddle_imag = -(16'sd32399); end
            12'd1123: begin twiddle_real = -(16'sd4958); twiddle_imag = -(16'sd32391); end
            12'd1124: begin twiddle_real = -(16'sd5007); twiddle_imag = -(16'sd32384); end
            12'd1125: begin twiddle_real = -(16'sd5057); twiddle_imag = -(16'sd32376); end
            12'd1126: begin twiddle_real = -(16'sd5107); twiddle_imag = -(16'sd32368); end
            12'd1127: begin twiddle_real = -(16'sd5156); twiddle_imag = -(16'sd32360); end
            12'd1128: begin twiddle_real = -(16'sd5206); twiddle_imag = -(16'sd32352); end
            12'd1129: begin twiddle_real = -(16'sd5256); twiddle_imag = -(16'sd32344); end
            12'd1130: begin twiddle_real = -(16'sd5305); twiddle_imag = -(16'sd32336); end
            12'd1131: begin twiddle_real = -(16'sd5355); twiddle_imag = -(16'sd32328); end
            12'd1132: begin twiddle_real = -(16'sd5404); twiddle_imag = -(16'sd32320); end
            12'd1133: begin twiddle_real = -(16'sd5454); twiddle_imag = -(16'sd32312); end
            12'd1134: begin twiddle_real = -(16'sd5504); twiddle_imag = -(16'sd32303); end
            12'd1135: begin twiddle_real = -(16'sd5553); twiddle_imag = -(16'sd32295); end
            12'd1136: begin twiddle_real = -(16'sd5603); twiddle_imag = -(16'sd32286); end
            12'd1137: begin twiddle_real = -(16'sd5652); twiddle_imag = -(16'sd32277); end
            12'd1138: begin twiddle_real = -(16'sd5702); twiddle_imag = -(16'sd32269); end
            12'd1139: begin twiddle_real = -(16'sd5751); twiddle_imag = -(16'sd32260); end
            12'd1140: begin twiddle_real = -(16'sd5801); twiddle_imag = -(16'sd32251); end
            12'd1141: begin twiddle_real = -(16'sd5850); twiddle_imag = -(16'sd32242); end
            12'd1142: begin twiddle_real = -(16'sd5899); twiddle_imag = -(16'sd32233); end
            12'd1143: begin twiddle_real = -(16'sd5949); twiddle_imag = -(16'sd32224); end
            12'd1144: begin twiddle_real = -(16'sd5998); twiddle_imag = -(16'sd32215); end
            12'd1145: begin twiddle_real = -(16'sd6048); twiddle_imag = -(16'sd32206); end
            12'd1146: begin twiddle_real = -(16'sd6097); twiddle_imag = -(16'sd32196); end
            12'd1147: begin twiddle_real = -(16'sd6147); twiddle_imag = -(16'sd32187); end
            12'd1148: begin twiddle_real = -(16'sd6196); twiddle_imag = -(16'sd32177); end
            12'd1149: begin twiddle_real = -(16'sd6245); twiddle_imag = -(16'sd32168); end
            12'd1150: begin twiddle_real = -(16'sd6295); twiddle_imag = -(16'sd32158); end
            12'd1151: begin twiddle_real = -(16'sd6344); twiddle_imag = -(16'sd32149); end
            12'd1152: begin twiddle_real = -(16'sd6393); twiddle_imag = -(16'sd32139); end
            12'd1153: begin twiddle_real = -(16'sd6443); twiddle_imag = -(16'sd32129); end
            12'd1154: begin twiddle_real = -(16'sd6492); twiddle_imag = -(16'sd32119); end
            12'd1155: begin twiddle_real = -(16'sd6541); twiddle_imag = -(16'sd32109); end
            12'd1156: begin twiddle_real = -(16'sd6590); twiddle_imag = -(16'sd32099); end
            12'd1157: begin twiddle_real = -(16'sd6640); twiddle_imag = -(16'sd32089); end
            12'd1158: begin twiddle_real = -(16'sd6689); twiddle_imag = -(16'sd32079); end
            12'd1159: begin twiddle_real = -(16'sd6738); twiddle_imag = -(16'sd32068); end
            12'd1160: begin twiddle_real = -(16'sd6787); twiddle_imag = -(16'sd32058); end
            12'd1161: begin twiddle_real = -(16'sd6836); twiddle_imag = -(16'sd32048); end
            12'd1162: begin twiddle_real = -(16'sd6885); twiddle_imag = -(16'sd32037); end
            12'd1163: begin twiddle_real = -(16'sd6935); twiddle_imag = -(16'sd32026); end
            12'd1164: begin twiddle_real = -(16'sd6984); twiddle_imag = -(16'sd32016); end
            12'd1165: begin twiddle_real = -(16'sd7033); twiddle_imag = -(16'sd32005); end
            12'd1166: begin twiddle_real = -(16'sd7082); twiddle_imag = -(16'sd31994); end
            12'd1167: begin twiddle_real = -(16'sd7131); twiddle_imag = -(16'sd31983); end
            12'd1168: begin twiddle_real = -(16'sd7180); twiddle_imag = -(16'sd31972); end
            12'd1169: begin twiddle_real = -(16'sd7229); twiddle_imag = -(16'sd31961); end
            12'd1170: begin twiddle_real = -(16'sd7278); twiddle_imag = -(16'sd31950); end
            12'd1171: begin twiddle_real = -(16'sd7327); twiddle_imag = -(16'sd31939); end
            12'd1172: begin twiddle_real = -(16'sd7376); twiddle_imag = -(16'sd31928); end
            12'd1173: begin twiddle_real = -(16'sd7425); twiddle_imag = -(16'sd31916); end
            12'd1174: begin twiddle_real = -(16'sd7474); twiddle_imag = -(16'sd31905); end
            12'd1175: begin twiddle_real = -(16'sd7523); twiddle_imag = -(16'sd31893); end
            12'd1176: begin twiddle_real = -(16'sd7572); twiddle_imag = -(16'sd31882); end
            12'd1177: begin twiddle_real = -(16'sd7621); twiddle_imag = -(16'sd31870); end
            12'd1178: begin twiddle_real = -(16'sd7670); twiddle_imag = -(16'sd31858); end
            12'd1179: begin twiddle_real = -(16'sd7718); twiddle_imag = -(16'sd31847); end
            12'd1180: begin twiddle_real = -(16'sd7767); twiddle_imag = -(16'sd31835); end
            12'd1181: begin twiddle_real = -(16'sd7816); twiddle_imag = -(16'sd31823); end
            12'd1182: begin twiddle_real = -(16'sd7865); twiddle_imag = -(16'sd31811); end
            12'd1183: begin twiddle_real = -(16'sd7914); twiddle_imag = -(16'sd31799); end
            12'd1184: begin twiddle_real = -(16'sd7962); twiddle_imag = -(16'sd31786); end
            12'd1185: begin twiddle_real = -(16'sd8011); twiddle_imag = -(16'sd31774); end
            12'd1186: begin twiddle_real = -(16'sd8060); twiddle_imag = -(16'sd31762); end
            12'd1187: begin twiddle_real = -(16'sd8109); twiddle_imag = -(16'sd31750); end
            12'd1188: begin twiddle_real = -(16'sd8157); twiddle_imag = -(16'sd31737); end
            12'd1189: begin twiddle_real = -(16'sd8206); twiddle_imag = -(16'sd31724); end
            12'd1190: begin twiddle_real = -(16'sd8255); twiddle_imag = -(16'sd31712); end
            12'd1191: begin twiddle_real = -(16'sd8303); twiddle_imag = -(16'sd31699); end
            12'd1192: begin twiddle_real = -(16'sd8352); twiddle_imag = -(16'sd31686); end
            12'd1193: begin twiddle_real = -(16'sd8401); twiddle_imag = -(16'sd31674); end
            12'd1194: begin twiddle_real = -(16'sd8449); twiddle_imag = -(16'sd31661); end
            12'd1195: begin twiddle_real = -(16'sd8498); twiddle_imag = -(16'sd31648); end
            12'd1196: begin twiddle_real = -(16'sd8546); twiddle_imag = -(16'sd31635); end
            12'd1197: begin twiddle_real = -(16'sd8595); twiddle_imag = -(16'sd31621); end
            12'd1198: begin twiddle_real = -(16'sd8643); twiddle_imag = -(16'sd31608); end
            12'd1199: begin twiddle_real = -(16'sd8692); twiddle_imag = -(16'sd31595); end
            12'd1200: begin twiddle_real = -(16'sd8740); twiddle_imag = -(16'sd31582); end
            12'd1201: begin twiddle_real = -(16'sd8789); twiddle_imag = -(16'sd31568); end
            12'd1202: begin twiddle_real = -(16'sd8837); twiddle_imag = -(16'sd31555); end
            12'd1203: begin twiddle_real = -(16'sd8885); twiddle_imag = -(16'sd31541); end
            12'd1204: begin twiddle_real = -(16'sd8934); twiddle_imag = -(16'sd31527); end
            12'd1205: begin twiddle_real = -(16'sd8982); twiddle_imag = -(16'sd31514); end
            12'd1206: begin twiddle_real = -(16'sd9030); twiddle_imag = -(16'sd31500); end
            12'd1207: begin twiddle_real = -(16'sd9079); twiddle_imag = -(16'sd31486); end
            12'd1208: begin twiddle_real = -(16'sd9127); twiddle_imag = -(16'sd31472); end
            12'd1209: begin twiddle_real = -(16'sd9175); twiddle_imag = -(16'sd31458); end
            12'd1210: begin twiddle_real = -(16'sd9224); twiddle_imag = -(16'sd31444); end
            12'd1211: begin twiddle_real = -(16'sd9272); twiddle_imag = -(16'sd31430); end
            12'd1212: begin twiddle_real = -(16'sd9320); twiddle_imag = -(16'sd31415); end
            12'd1213: begin twiddle_real = -(16'sd9368); twiddle_imag = -(16'sd31401); end
            12'd1214: begin twiddle_real = -(16'sd9416); twiddle_imag = -(16'sd31387); end
            12'd1215: begin twiddle_real = -(16'sd9464); twiddle_imag = -(16'sd31372); end
            12'd1216: begin twiddle_real = -(16'sd9513); twiddle_imag = -(16'sd31358); end
            12'd1217: begin twiddle_real = -(16'sd9561); twiddle_imag = -(16'sd31343); end
            12'd1218: begin twiddle_real = -(16'sd9609); twiddle_imag = -(16'sd31328); end
            12'd1219: begin twiddle_real = -(16'sd9657); twiddle_imag = -(16'sd31313); end
            12'd1220: begin twiddle_real = -(16'sd9705); twiddle_imag = -(16'sd31299); end
            12'd1221: begin twiddle_real = -(16'sd9753); twiddle_imag = -(16'sd31284); end
            12'd1222: begin twiddle_real = -(16'sd9801); twiddle_imag = -(16'sd31269); end
            12'd1223: begin twiddle_real = -(16'sd9849); twiddle_imag = -(16'sd31254); end
            12'd1224: begin twiddle_real = -(16'sd9897); twiddle_imag = -(16'sd31238); end
            12'd1225: begin twiddle_real = -(16'sd9945); twiddle_imag = -(16'sd31223); end
            12'd1226: begin twiddle_real = -(16'sd9992); twiddle_imag = -(16'sd31208); end
            12'd1227: begin twiddle_real = -(16'sd10040); twiddle_imag = -(16'sd31193); end
            12'd1228: begin twiddle_real = -(16'sd10088); twiddle_imag = -(16'sd31177); end
            12'd1229: begin twiddle_real = -(16'sd10136); twiddle_imag = -(16'sd31162); end
            12'd1230: begin twiddle_real = -(16'sd10184); twiddle_imag = -(16'sd31146); end
            12'd1231: begin twiddle_real = -(16'sd10231); twiddle_imag = -(16'sd31130); end
            12'd1232: begin twiddle_real = -(16'sd10279); twiddle_imag = -(16'sd31115); end
            12'd1233: begin twiddle_real = -(16'sd10327); twiddle_imag = -(16'sd31099); end
            12'd1234: begin twiddle_real = -(16'sd10375); twiddle_imag = -(16'sd31083); end
            12'd1235: begin twiddle_real = -(16'sd10422); twiddle_imag = -(16'sd31067); end
            12'd1236: begin twiddle_real = -(16'sd10470); twiddle_imag = -(16'sd31051); end
            12'd1237: begin twiddle_real = -(16'sd10518); twiddle_imag = -(16'sd31035); end
            12'd1238: begin twiddle_real = -(16'sd10565); twiddle_imag = -(16'sd31019); end
            12'd1239: begin twiddle_real = -(16'sd10613); twiddle_imag = -(16'sd31002); end
            12'd1240: begin twiddle_real = -(16'sd10660); twiddle_imag = -(16'sd30986); end
            12'd1241: begin twiddle_real = -(16'sd10708); twiddle_imag = -(16'sd30970); end
            12'd1242: begin twiddle_real = -(16'sd10755); twiddle_imag = -(16'sd30953); end
            12'd1243: begin twiddle_real = -(16'sd10803); twiddle_imag = -(16'sd30937); end
            12'd1244: begin twiddle_real = -(16'sd10850); twiddle_imag = -(16'sd30920); end
            12'd1245: begin twiddle_real = -(16'sd10898); twiddle_imag = -(16'sd30903); end
            12'd1246: begin twiddle_real = -(16'sd10945); twiddle_imag = -(16'sd30887); end
            12'd1247: begin twiddle_real = -(16'sd10992); twiddle_imag = -(16'sd30870); end
            12'd1248: begin twiddle_real = -(16'sd11040); twiddle_imag = -(16'sd30853); end
            12'd1249: begin twiddle_real = -(16'sd11087); twiddle_imag = -(16'sd30836); end
            12'd1250: begin twiddle_real = -(16'sd11134); twiddle_imag = -(16'sd30819); end
            12'd1251: begin twiddle_real = -(16'sd11182); twiddle_imag = -(16'sd30802); end
            12'd1252: begin twiddle_real = -(16'sd11229); twiddle_imag = -(16'sd30785); end
            12'd1253: begin twiddle_real = -(16'sd11276); twiddle_imag = -(16'sd30767); end
            12'd1254: begin twiddle_real = -(16'sd11323); twiddle_imag = -(16'sd30750); end
            12'd1255: begin twiddle_real = -(16'sd11370); twiddle_imag = -(16'sd30733); end
            12'd1256: begin twiddle_real = -(16'sd11417); twiddle_imag = -(16'sd30715); end
            12'd1257: begin twiddle_real = -(16'sd11465); twiddle_imag = -(16'sd30698); end
            12'd1258: begin twiddle_real = -(16'sd11512); twiddle_imag = -(16'sd30680); end
            12'd1259: begin twiddle_real = -(16'sd11559); twiddle_imag = -(16'sd30662); end
            12'd1260: begin twiddle_real = -(16'sd11606); twiddle_imag = -(16'sd30645); end
            12'd1261: begin twiddle_real = -(16'sd11653); twiddle_imag = -(16'sd30627); end
            12'd1262: begin twiddle_real = -(16'sd11700); twiddle_imag = -(16'sd30609); end
            12'd1263: begin twiddle_real = -(16'sd11747); twiddle_imag = -(16'sd30591); end
            12'd1264: begin twiddle_real = -(16'sd11794); twiddle_imag = -(16'sd30573); end
            12'd1265: begin twiddle_real = -(16'sd11840); twiddle_imag = -(16'sd30555); end
            12'd1266: begin twiddle_real = -(16'sd11887); twiddle_imag = -(16'sd30536); end
            12'd1267: begin twiddle_real = -(16'sd11934); twiddle_imag = -(16'sd30518); end
            12'd1268: begin twiddle_real = -(16'sd11981); twiddle_imag = -(16'sd30500); end
            12'd1269: begin twiddle_real = -(16'sd12028); twiddle_imag = -(16'sd30481); end
            12'd1270: begin twiddle_real = -(16'sd12074); twiddle_imag = -(16'sd30463); end
            12'd1271: begin twiddle_real = -(16'sd12121); twiddle_imag = -(16'sd30444); end
            12'd1272: begin twiddle_real = -(16'sd12168); twiddle_imag = -(16'sd30426); end
            12'd1273: begin twiddle_real = -(16'sd12214); twiddle_imag = -(16'sd30407); end
            12'd1274: begin twiddle_real = -(16'sd12261); twiddle_imag = -(16'sd30388); end
            12'd1275: begin twiddle_real = -(16'sd12308); twiddle_imag = -(16'sd30369); end
            12'd1276: begin twiddle_real = -(16'sd12354); twiddle_imag = -(16'sd30351); end
            12'd1277: begin twiddle_real = -(16'sd12401); twiddle_imag = -(16'sd30332); end
            12'd1278: begin twiddle_real = -(16'sd12447); twiddle_imag = -(16'sd30313); end
            12'd1279: begin twiddle_real = -(16'sd12494); twiddle_imag = -(16'sd30293); end
            12'd1280: begin twiddle_real = -(16'sd12540); twiddle_imag = -(16'sd30274); end
            12'd1281: begin twiddle_real = -(16'sd12587); twiddle_imag = -(16'sd30255); end
            12'd1282: begin twiddle_real = -(16'sd12633); twiddle_imag = -(16'sd30236); end
            12'd1283: begin twiddle_real = -(16'sd12679); twiddle_imag = -(16'sd30216); end
            12'd1284: begin twiddle_real = -(16'sd12726); twiddle_imag = -(16'sd30197); end
            12'd1285: begin twiddle_real = -(16'sd12772); twiddle_imag = -(16'sd30177); end
            12'd1286: begin twiddle_real = -(16'sd12818); twiddle_imag = -(16'sd30157); end
            12'd1287: begin twiddle_real = -(16'sd12865); twiddle_imag = -(16'sd30138); end
            12'd1288: begin twiddle_real = -(16'sd12911); twiddle_imag = -(16'sd30118); end
            12'd1289: begin twiddle_real = -(16'sd12957); twiddle_imag = -(16'sd30098); end
            12'd1290: begin twiddle_real = -(16'sd13003); twiddle_imag = -(16'sd30078); end
            12'd1291: begin twiddle_real = -(16'sd13049); twiddle_imag = -(16'sd30058); end
            12'd1292: begin twiddle_real = -(16'sd13095); twiddle_imag = -(16'sd30038); end
            12'd1293: begin twiddle_real = -(16'sd13141); twiddle_imag = -(16'sd30018); end
            12'd1294: begin twiddle_real = -(16'sd13187); twiddle_imag = -(16'sd29998); end
            12'd1295: begin twiddle_real = -(16'sd13233); twiddle_imag = -(16'sd29978); end
            12'd1296: begin twiddle_real = -(16'sd13279); twiddle_imag = -(16'sd29957); end
            12'd1297: begin twiddle_real = -(16'sd13325); twiddle_imag = -(16'sd29937); end
            12'd1298: begin twiddle_real = -(16'sd13371); twiddle_imag = -(16'sd29916); end
            12'd1299: begin twiddle_real = -(16'sd13417); twiddle_imag = -(16'sd29896); end
            12'd1300: begin twiddle_real = -(16'sd13463); twiddle_imag = -(16'sd29875); end
            12'd1301: begin twiddle_real = -(16'sd13509); twiddle_imag = -(16'sd29855); end
            12'd1302: begin twiddle_real = -(16'sd13555); twiddle_imag = -(16'sd29834); end
            12'd1303: begin twiddle_real = -(16'sd13600); twiddle_imag = -(16'sd29813); end
            12'd1304: begin twiddle_real = -(16'sd13646); twiddle_imag = -(16'sd29792); end
            12'd1305: begin twiddle_real = -(16'sd13692); twiddle_imag = -(16'sd29771); end
            12'd1306: begin twiddle_real = -(16'sd13737); twiddle_imag = -(16'sd29750); end
            12'd1307: begin twiddle_real = -(16'sd13783); twiddle_imag = -(16'sd29729); end
            12'd1308: begin twiddle_real = -(16'sd13829); twiddle_imag = -(16'sd29708); end
            12'd1309: begin twiddle_real = -(16'sd13874); twiddle_imag = -(16'sd29687); end
            12'd1310: begin twiddle_real = -(16'sd13920); twiddle_imag = -(16'sd29665); end
            12'd1311: begin twiddle_real = -(16'sd13965); twiddle_imag = -(16'sd29644); end
            12'd1312: begin twiddle_real = -(16'sd14011); twiddle_imag = -(16'sd29622); end
            12'd1313: begin twiddle_real = -(16'sd14056); twiddle_imag = -(16'sd29601); end
            12'd1314: begin twiddle_real = -(16'sd14101); twiddle_imag = -(16'sd29579); end
            12'd1315: begin twiddle_real = -(16'sd14147); twiddle_imag = -(16'sd29558); end
            12'd1316: begin twiddle_real = -(16'sd14192); twiddle_imag = -(16'sd29536); end
            12'd1317: begin twiddle_real = -(16'sd14237); twiddle_imag = -(16'sd29514); end
            12'd1318: begin twiddle_real = -(16'sd14283); twiddle_imag = -(16'sd29492); end
            12'd1319: begin twiddle_real = -(16'sd14328); twiddle_imag = -(16'sd29470); end
            12'd1320: begin twiddle_real = -(16'sd14373); twiddle_imag = -(16'sd29448); end
            12'd1321: begin twiddle_real = -(16'sd14418); twiddle_imag = -(16'sd29426); end
            12'd1322: begin twiddle_real = -(16'sd14463); twiddle_imag = -(16'sd29404); end
            12'd1323: begin twiddle_real = -(16'sd14508); twiddle_imag = -(16'sd29382); end
            12'd1324: begin twiddle_real = -(16'sd14553); twiddle_imag = -(16'sd29360); end
            12'd1325: begin twiddle_real = -(16'sd14599); twiddle_imag = -(16'sd29337); end
            12'd1326: begin twiddle_real = -(16'sd14643); twiddle_imag = -(16'sd29315); end
            12'd1327: begin twiddle_real = -(16'sd14688); twiddle_imag = -(16'sd29292); end
            12'd1328: begin twiddle_real = -(16'sd14733); twiddle_imag = -(16'sd29270); end
            12'd1329: begin twiddle_real = -(16'sd14778); twiddle_imag = -(16'sd29247); end
            12'd1330: begin twiddle_real = -(16'sd14823); twiddle_imag = -(16'sd29224); end
            12'd1331: begin twiddle_real = -(16'sd14868); twiddle_imag = -(16'sd29202); end
            12'd1332: begin twiddle_real = -(16'sd14913); twiddle_imag = -(16'sd29179); end
            12'd1333: begin twiddle_real = -(16'sd14957); twiddle_imag = -(16'sd29156); end
            12'd1334: begin twiddle_real = -(16'sd15002); twiddle_imag = -(16'sd29133); end
            12'd1335: begin twiddle_real = -(16'sd15047); twiddle_imag = -(16'sd29110); end
            12'd1336: begin twiddle_real = -(16'sd15091); twiddle_imag = -(16'sd29087); end
            12'd1337: begin twiddle_real = -(16'sd15136); twiddle_imag = -(16'sd29063); end
            12'd1338: begin twiddle_real = -(16'sd15181); twiddle_imag = -(16'sd29040); end
            12'd1339: begin twiddle_real = -(16'sd15225); twiddle_imag = -(16'sd29017); end
            12'd1340: begin twiddle_real = -(16'sd15270); twiddle_imag = -(16'sd28994); end
            12'd1341: begin twiddle_real = -(16'sd15314); twiddle_imag = -(16'sd28970); end
            12'd1342: begin twiddle_real = -(16'sd15358); twiddle_imag = -(16'sd28947); end
            12'd1343: begin twiddle_real = -(16'sd15403); twiddle_imag = -(16'sd28923); end
            12'd1344: begin twiddle_real = -(16'sd15447); twiddle_imag = -(16'sd28899); end
            12'd1345: begin twiddle_real = -(16'sd15492); twiddle_imag = -(16'sd28876); end
            12'd1346: begin twiddle_real = -(16'sd15536); twiddle_imag = -(16'sd28852); end
            12'd1347: begin twiddle_real = -(16'sd15580); twiddle_imag = -(16'sd28828); end
            12'd1348: begin twiddle_real = -(16'sd15624); twiddle_imag = -(16'sd28804); end
            12'd1349: begin twiddle_real = -(16'sd15668); twiddle_imag = -(16'sd28780); end
            12'd1350: begin twiddle_real = -(16'sd15713); twiddle_imag = -(16'sd28756); end
            12'd1351: begin twiddle_real = -(16'sd15757); twiddle_imag = -(16'sd28732); end
            12'd1352: begin twiddle_real = -(16'sd15801); twiddle_imag = -(16'sd28708); end
            12'd1353: begin twiddle_real = -(16'sd15845); twiddle_imag = -(16'sd28683); end
            12'd1354: begin twiddle_real = -(16'sd15889); twiddle_imag = -(16'sd28659); end
            12'd1355: begin twiddle_real = -(16'sd15933); twiddle_imag = -(16'sd28635); end
            12'd1356: begin twiddle_real = -(16'sd15977); twiddle_imag = -(16'sd28610); end
            12'd1357: begin twiddle_real = -(16'sd16020); twiddle_imag = -(16'sd28586); end
            12'd1358: begin twiddle_real = -(16'sd16064); twiddle_imag = -(16'sd28561); end
            12'd1359: begin twiddle_real = -(16'sd16108); twiddle_imag = -(16'sd28536); end
            12'd1360: begin twiddle_real = -(16'sd16152); twiddle_imag = -(16'sd28512); end
            12'd1361: begin twiddle_real = -(16'sd16196); twiddle_imag = -(16'sd28487); end
            12'd1362: begin twiddle_real = -(16'sd16239); twiddle_imag = -(16'sd28462); end
            12'd1363: begin twiddle_real = -(16'sd16283); twiddle_imag = -(16'sd28437); end
            12'd1364: begin twiddle_real = -(16'sd16326); twiddle_imag = -(16'sd28412); end
            12'd1365: begin twiddle_real = -(16'sd16370); twiddle_imag = -(16'sd28387); end
            12'd1366: begin twiddle_real = -(16'sd16414); twiddle_imag = -(16'sd28362); end
            12'd1367: begin twiddle_real = -(16'sd16457); twiddle_imag = -(16'sd28336); end
            12'd1368: begin twiddle_real = -(16'sd16500); twiddle_imag = -(16'sd28311); end
            12'd1369: begin twiddle_real = -(16'sd16544); twiddle_imag = -(16'sd28286); end
            12'd1370: begin twiddle_real = -(16'sd16587); twiddle_imag = -(16'sd28260); end
            12'd1371: begin twiddle_real = -(16'sd16631); twiddle_imag = -(16'sd28235); end
            12'd1372: begin twiddle_real = -(16'sd16674); twiddle_imag = -(16'sd28209); end
            12'd1373: begin twiddle_real = -(16'sd16717); twiddle_imag = -(16'sd28184); end
            12'd1374: begin twiddle_real = -(16'sd16760); twiddle_imag = -(16'sd28158); end
            12'd1375: begin twiddle_real = -(16'sd16803); twiddle_imag = -(16'sd28132); end
            12'd1376: begin twiddle_real = -(16'sd16847); twiddle_imag = -(16'sd28107); end
            12'd1377: begin twiddle_real = -(16'sd16890); twiddle_imag = -(16'sd28081); end
            12'd1378: begin twiddle_real = -(16'sd16933); twiddle_imag = -(16'sd28055); end
            12'd1379: begin twiddle_real = -(16'sd16976); twiddle_imag = -(16'sd28029); end
            12'd1380: begin twiddle_real = -(16'sd17019); twiddle_imag = -(16'sd28003); end
            12'd1381: begin twiddle_real = -(16'sd17062); twiddle_imag = -(16'sd27977); end
            12'd1382: begin twiddle_real = -(16'sd17105); twiddle_imag = -(16'sd27950); end
            12'd1383: begin twiddle_real = -(16'sd17147); twiddle_imag = -(16'sd27924); end
            12'd1384: begin twiddle_real = -(16'sd17190); twiddle_imag = -(16'sd27898); end
            12'd1385: begin twiddle_real = -(16'sd17233); twiddle_imag = -(16'sd27871); end
            12'd1386: begin twiddle_real = -(16'sd17276); twiddle_imag = -(16'sd27845); end
            12'd1387: begin twiddle_real = -(16'sd17318); twiddle_imag = -(16'sd27818); end
            12'd1388: begin twiddle_real = -(16'sd17361); twiddle_imag = -(16'sd27792); end
            12'd1389: begin twiddle_real = -(16'sd17404); twiddle_imag = -(16'sd27765); end
            12'd1390: begin twiddle_real = -(16'sd17446); twiddle_imag = -(16'sd27738); end
            12'd1391: begin twiddle_real = -(16'sd17489); twiddle_imag = -(16'sd27712); end
            12'd1392: begin twiddle_real = -(16'sd17531); twiddle_imag = -(16'sd27685); end
            12'd1393: begin twiddle_real = -(16'sd17574); twiddle_imag = -(16'sd27658); end
            12'd1394: begin twiddle_real = -(16'sd17616); twiddle_imag = -(16'sd27631); end
            12'd1395: begin twiddle_real = -(16'sd17659); twiddle_imag = -(16'sd27604); end
            12'd1396: begin twiddle_real = -(16'sd17701); twiddle_imag = -(16'sd27577); end
            12'd1397: begin twiddle_real = -(16'sd17743); twiddle_imag = -(16'sd27549); end
            12'd1398: begin twiddle_real = -(16'sd17785); twiddle_imag = -(16'sd27522); end
            12'd1399: begin twiddle_real = -(16'sd17828); twiddle_imag = -(16'sd27495); end
            12'd1400: begin twiddle_real = -(16'sd17870); twiddle_imag = -(16'sd27467); end
            12'd1401: begin twiddle_real = -(16'sd17912); twiddle_imag = -(16'sd27440); end
            12'd1402: begin twiddle_real = -(16'sd17954); twiddle_imag = -(16'sd27412); end
            12'd1403: begin twiddle_real = -(16'sd17996); twiddle_imag = -(16'sd27385); end
            12'd1404: begin twiddle_real = -(16'sd18038); twiddle_imag = -(16'sd27357); end
            12'd1405: begin twiddle_real = -(16'sd18080); twiddle_imag = -(16'sd27330); end
            12'd1406: begin twiddle_real = -(16'sd18122); twiddle_imag = -(16'sd27302); end
            12'd1407: begin twiddle_real = -(16'sd18164); twiddle_imag = -(16'sd27274); end
            12'd1408: begin twiddle_real = -(16'sd18205); twiddle_imag = -(16'sd27246); end
            12'd1409: begin twiddle_real = -(16'sd18247); twiddle_imag = -(16'sd27218); end
            12'd1410: begin twiddle_real = -(16'sd18289); twiddle_imag = -(16'sd27190); end
            12'd1411: begin twiddle_real = -(16'sd18331); twiddle_imag = -(16'sd27162); end
            12'd1412: begin twiddle_real = -(16'sd18372); twiddle_imag = -(16'sd27134); end
            12'd1413: begin twiddle_real = -(16'sd18414); twiddle_imag = -(16'sd27106); end
            12'd1414: begin twiddle_real = -(16'sd18455); twiddle_imag = -(16'sd27077); end
            12'd1415: begin twiddle_real = -(16'sd18497); twiddle_imag = -(16'sd27049); end
            12'd1416: begin twiddle_real = -(16'sd18538); twiddle_imag = -(16'sd27021); end
            12'd1417: begin twiddle_real = -(16'sd18580); twiddle_imag = -(16'sd26992); end
            12'd1418: begin twiddle_real = -(16'sd18621); twiddle_imag = -(16'sd26964); end
            12'd1419: begin twiddle_real = -(16'sd18663); twiddle_imag = -(16'sd26935); end
            12'd1420: begin twiddle_real = -(16'sd18704); twiddle_imag = -(16'sd26906); end
            12'd1421: begin twiddle_real = -(16'sd18745); twiddle_imag = -(16'sd26878); end
            12'd1422: begin twiddle_real = -(16'sd18786); twiddle_imag = -(16'sd26849); end
            12'd1423: begin twiddle_real = -(16'sd18827); twiddle_imag = -(16'sd26820); end
            12'd1424: begin twiddle_real = -(16'sd18869); twiddle_imag = -(16'sd26791); end
            12'd1425: begin twiddle_real = -(16'sd18910); twiddle_imag = -(16'sd26762); end
            12'd1426: begin twiddle_real = -(16'sd18951); twiddle_imag = -(16'sd26733); end
            12'd1427: begin twiddle_real = -(16'sd18992); twiddle_imag = -(16'sd26704); end
            12'd1428: begin twiddle_real = -(16'sd19033); twiddle_imag = -(16'sd26675); end
            12'd1429: begin twiddle_real = -(16'sd19074); twiddle_imag = -(16'sd26646); end
            12'd1430: begin twiddle_real = -(16'sd19114); twiddle_imag = -(16'sd26616); end
            12'd1431: begin twiddle_real = -(16'sd19155); twiddle_imag = -(16'sd26587); end
            12'd1432: begin twiddle_real = -(16'sd19196); twiddle_imag = -(16'sd26558); end
            12'd1433: begin twiddle_real = -(16'sd19237); twiddle_imag = -(16'sd26528); end
            12'd1434: begin twiddle_real = -(16'sd19277); twiddle_imag = -(16'sd26499); end
            12'd1435: begin twiddle_real = -(16'sd19318); twiddle_imag = -(16'sd26469); end
            12'd1436: begin twiddle_real = -(16'sd19359); twiddle_imag = -(16'sd26439); end
            12'd1437: begin twiddle_real = -(16'sd19399); twiddle_imag = -(16'sd26410); end
            12'd1438: begin twiddle_real = -(16'sd19440); twiddle_imag = -(16'sd26380); end
            12'd1439: begin twiddle_real = -(16'sd19480); twiddle_imag = -(16'sd26350); end
            12'd1440: begin twiddle_real = -(16'sd19520); twiddle_imag = -(16'sd26320); end
            12'd1441: begin twiddle_real = -(16'sd19561); twiddle_imag = -(16'sd26290); end
            12'd1442: begin twiddle_real = -(16'sd19601); twiddle_imag = -(16'sd26260); end
            12'd1443: begin twiddle_real = -(16'sd19641); twiddle_imag = -(16'sd26230); end
            12'd1444: begin twiddle_real = -(16'sd19682); twiddle_imag = -(16'sd26200); end
            12'd1445: begin twiddle_real = -(16'sd19722); twiddle_imag = -(16'sd26170); end
            12'd1446: begin twiddle_real = -(16'sd19762); twiddle_imag = -(16'sd26139); end
            12'd1447: begin twiddle_real = -(16'sd19802); twiddle_imag = -(16'sd26109); end
            12'd1448: begin twiddle_real = -(16'sd19842); twiddle_imag = -(16'sd26078); end
            12'd1449: begin twiddle_real = -(16'sd19882); twiddle_imag = -(16'sd26048); end
            12'd1450: begin twiddle_real = -(16'sd19922); twiddle_imag = -(16'sd26017); end
            12'd1451: begin twiddle_real = -(16'sd19962); twiddle_imag = -(16'sd25987); end
            12'd1452: begin twiddle_real = -(16'sd20002); twiddle_imag = -(16'sd25956); end
            12'd1453: begin twiddle_real = -(16'sd20041); twiddle_imag = -(16'sd25926); end
            12'd1454: begin twiddle_real = -(16'sd20081); twiddle_imag = -(16'sd25895); end
            12'd1455: begin twiddle_real = -(16'sd20121); twiddle_imag = -(16'sd25864); end
            12'd1456: begin twiddle_real = -(16'sd20160); twiddle_imag = -(16'sd25833); end
            12'd1457: begin twiddle_real = -(16'sd20200); twiddle_imag = -(16'sd25802); end
            12'd1458: begin twiddle_real = -(16'sd20240); twiddle_imag = -(16'sd25771); end
            12'd1459: begin twiddle_real = -(16'sd20279); twiddle_imag = -(16'sd25740); end
            12'd1460: begin twiddle_real = -(16'sd20319); twiddle_imag = -(16'sd25709); end
            12'd1461: begin twiddle_real = -(16'sd20358); twiddle_imag = -(16'sd25678); end
            12'd1462: begin twiddle_real = -(16'sd20397); twiddle_imag = -(16'sd25646); end
            12'd1463: begin twiddle_real = -(16'sd20437); twiddle_imag = -(16'sd25615); end
            12'd1464: begin twiddle_real = -(16'sd20476); twiddle_imag = -(16'sd25584); end
            12'd1465: begin twiddle_real = -(16'sd20515); twiddle_imag = -(16'sd25552); end
            12'd1466: begin twiddle_real = -(16'sd20554); twiddle_imag = -(16'sd25521); end
            12'd1467: begin twiddle_real = -(16'sd20593); twiddle_imag = -(16'sd25489); end
            12'd1468: begin twiddle_real = -(16'sd20632); twiddle_imag = -(16'sd25458); end
            12'd1469: begin twiddle_real = -(16'sd20672); twiddle_imag = -(16'sd25426); end
            12'd1470: begin twiddle_real = -(16'sd20710); twiddle_imag = -(16'sd25394); end
            12'd1471: begin twiddle_real = -(16'sd20749); twiddle_imag = -(16'sd25362); end
            12'd1472: begin twiddle_real = -(16'sd20788); twiddle_imag = -(16'sd25331); end
            12'd1473: begin twiddle_real = -(16'sd20827); twiddle_imag = -(16'sd25299); end
            12'd1474: begin twiddle_real = -(16'sd20866); twiddle_imag = -(16'sd25267); end
            12'd1475: begin twiddle_real = -(16'sd20905); twiddle_imag = -(16'sd25235); end
            12'd1476: begin twiddle_real = -(16'sd20943); twiddle_imag = -(16'sd25202); end
            12'd1477: begin twiddle_real = -(16'sd20982); twiddle_imag = -(16'sd25170); end
            12'd1478: begin twiddle_real = -(16'sd21021); twiddle_imag = -(16'sd25138); end
            12'd1479: begin twiddle_real = -(16'sd21059); twiddle_imag = -(16'sd25106); end
            12'd1480: begin twiddle_real = -(16'sd21098); twiddle_imag = -(16'sd25074); end
            12'd1481: begin twiddle_real = -(16'sd21136); twiddle_imag = -(16'sd25041); end
            12'd1482: begin twiddle_real = -(16'sd21174); twiddle_imag = -(16'sd25009); end
            12'd1483: begin twiddle_real = -(16'sd21213); twiddle_imag = -(16'sd24976); end
            12'd1484: begin twiddle_real = -(16'sd21251); twiddle_imag = -(16'sd24944); end
            12'd1485: begin twiddle_real = -(16'sd21289); twiddle_imag = -(16'sd24911); end
            12'd1486: begin twiddle_real = -(16'sd21327); twiddle_imag = -(16'sd24878); end
            12'd1487: begin twiddle_real = -(16'sd21366); twiddle_imag = -(16'sd24846); end
            12'd1488: begin twiddle_real = -(16'sd21404); twiddle_imag = -(16'sd24813); end
            12'd1489: begin twiddle_real = -(16'sd21442); twiddle_imag = -(16'sd24780); end
            12'd1490: begin twiddle_real = -(16'sd21480); twiddle_imag = -(16'sd24747); end
            12'd1491: begin twiddle_real = -(16'sd21518); twiddle_imag = -(16'sd24714); end
            12'd1492: begin twiddle_real = -(16'sd21556); twiddle_imag = -(16'sd24681); end
            12'd1493: begin twiddle_real = -(16'sd21593); twiddle_imag = -(16'sd24648); end
            12'd1494: begin twiddle_real = -(16'sd21631); twiddle_imag = -(16'sd24615); end
            12'd1495: begin twiddle_real = -(16'sd21669); twiddle_imag = -(16'sd24581); end
            12'd1496: begin twiddle_real = -(16'sd21707); twiddle_imag = -(16'sd24548); end
            12'd1497: begin twiddle_real = -(16'sd21744); twiddle_imag = -(16'sd24515); end
            12'd1498: begin twiddle_real = -(16'sd21782); twiddle_imag = -(16'sd24481); end
            12'd1499: begin twiddle_real = -(16'sd21819); twiddle_imag = -(16'sd24448); end
            12'd1500: begin twiddle_real = -(16'sd21857); twiddle_imag = -(16'sd24415); end
            12'd1501: begin twiddle_real = -(16'sd21894); twiddle_imag = -(16'sd24381); end
            12'd1502: begin twiddle_real = -(16'sd21932); twiddle_imag = -(16'sd24347); end
            12'd1503: begin twiddle_real = -(16'sd21969); twiddle_imag = -(16'sd24314); end
            12'd1504: begin twiddle_real = -(16'sd22006); twiddle_imag = -(16'sd24280); end
            12'd1505: begin twiddle_real = -(16'sd22043); twiddle_imag = -(16'sd24246); end
            12'd1506: begin twiddle_real = -(16'sd22081); twiddle_imag = -(16'sd24212); end
            12'd1507: begin twiddle_real = -(16'sd22118); twiddle_imag = -(16'sd24178); end
            12'd1508: begin twiddle_real = -(16'sd22155); twiddle_imag = -(16'sd24145); end
            12'd1509: begin twiddle_real = -(16'sd22192); twiddle_imag = -(16'sd24110); end
            12'd1510: begin twiddle_real = -(16'sd22229); twiddle_imag = -(16'sd24076); end
            12'd1511: begin twiddle_real = -(16'sd22266); twiddle_imag = -(16'sd24042); end
            12'd1512: begin twiddle_real = -(16'sd22302); twiddle_imag = -(16'sd24008); end
            12'd1513: begin twiddle_real = -(16'sd22339); twiddle_imag = -(16'sd23974); end
            12'd1514: begin twiddle_real = -(16'sd22376); twiddle_imag = -(16'sd23940); end
            12'd1515: begin twiddle_real = -(16'sd22413); twiddle_imag = -(16'sd23905); end
            12'd1516: begin twiddle_real = -(16'sd22449); twiddle_imag = -(16'sd23871); end
            12'd1517: begin twiddle_real = -(16'sd22486); twiddle_imag = -(16'sd23836); end
            12'd1518: begin twiddle_real = -(16'sd22522); twiddle_imag = -(16'sd23802); end
            12'd1519: begin twiddle_real = -(16'sd22559); twiddle_imag = -(16'sd23767); end
            12'd1520: begin twiddle_real = -(16'sd22595); twiddle_imag = -(16'sd23733); end
            12'd1521: begin twiddle_real = -(16'sd22632); twiddle_imag = -(16'sd23698); end
            12'd1522: begin twiddle_real = -(16'sd22668); twiddle_imag = -(16'sd23663); end
            12'd1523: begin twiddle_real = -(16'sd22704); twiddle_imag = -(16'sd23628); end
            12'd1524: begin twiddle_real = -(16'sd22741); twiddle_imag = -(16'sd23594); end
            12'd1525: begin twiddle_real = -(16'sd22777); twiddle_imag = -(16'sd23559); end
            12'd1526: begin twiddle_real = -(16'sd22813); twiddle_imag = -(16'sd23524); end
            12'd1527: begin twiddle_real = -(16'sd22849); twiddle_imag = -(16'sd23489); end
            12'd1528: begin twiddle_real = -(16'sd22885); twiddle_imag = -(16'sd23454); end
            12'd1529: begin twiddle_real = -(16'sd22921); twiddle_imag = -(16'sd23418); end
            12'd1530: begin twiddle_real = -(16'sd22957); twiddle_imag = -(16'sd23383); end
            12'd1531: begin twiddle_real = -(16'sd22993); twiddle_imag = -(16'sd23348); end
            12'd1532: begin twiddle_real = -(16'sd23028); twiddle_imag = -(16'sd23313); end
            12'd1533: begin twiddle_real = -(16'sd23064); twiddle_imag = -(16'sd23277); end
            12'd1534: begin twiddle_real = -(16'sd23100); twiddle_imag = -(16'sd23242); end
            12'd1535: begin twiddle_real = -(16'sd23135); twiddle_imag = -(16'sd23206); end
            12'd1536: begin twiddle_real = -(16'sd23171); twiddle_imag = -(16'sd23171); end
            12'd1537: begin twiddle_real = -(16'sd23206); twiddle_imag = -(16'sd23135); end
            12'd1538: begin twiddle_real = -(16'sd23242); twiddle_imag = -(16'sd23100); end
            12'd1539: begin twiddle_real = -(16'sd23277); twiddle_imag = -(16'sd23064); end
            12'd1540: begin twiddle_real = -(16'sd23313); twiddle_imag = -(16'sd23028); end
            12'd1541: begin twiddle_real = -(16'sd23348); twiddle_imag = -(16'sd22993); end
            12'd1542: begin twiddle_real = -(16'sd23383); twiddle_imag = -(16'sd22957); end
            12'd1543: begin twiddle_real = -(16'sd23418); twiddle_imag = -(16'sd22921); end
            12'd1544: begin twiddle_real = -(16'sd23454); twiddle_imag = -(16'sd22885); end
            12'd1545: begin twiddle_real = -(16'sd23489); twiddle_imag = -(16'sd22849); end
            12'd1546: begin twiddle_real = -(16'sd23524); twiddle_imag = -(16'sd22813); end
            12'd1547: begin twiddle_real = -(16'sd23559); twiddle_imag = -(16'sd22777); end
            12'd1548: begin twiddle_real = -(16'sd23594); twiddle_imag = -(16'sd22741); end
            12'd1549: begin twiddle_real = -(16'sd23628); twiddle_imag = -(16'sd22704); end
            12'd1550: begin twiddle_real = -(16'sd23663); twiddle_imag = -(16'sd22668); end
            12'd1551: begin twiddle_real = -(16'sd23698); twiddle_imag = -(16'sd22632); end
            12'd1552: begin twiddle_real = -(16'sd23733); twiddle_imag = -(16'sd22595); end
            12'd1553: begin twiddle_real = -(16'sd23767); twiddle_imag = -(16'sd22559); end
            12'd1554: begin twiddle_real = -(16'sd23802); twiddle_imag = -(16'sd22522); end
            12'd1555: begin twiddle_real = -(16'sd23836); twiddle_imag = -(16'sd22486); end
            12'd1556: begin twiddle_real = -(16'sd23871); twiddle_imag = -(16'sd22449); end
            12'd1557: begin twiddle_real = -(16'sd23905); twiddle_imag = -(16'sd22413); end
            12'd1558: begin twiddle_real = -(16'sd23940); twiddle_imag = -(16'sd22376); end
            12'd1559: begin twiddle_real = -(16'sd23974); twiddle_imag = -(16'sd22339); end
            12'd1560: begin twiddle_real = -(16'sd24008); twiddle_imag = -(16'sd22302); end
            12'd1561: begin twiddle_real = -(16'sd24042); twiddle_imag = -(16'sd22266); end
            12'd1562: begin twiddle_real = -(16'sd24076); twiddle_imag = -(16'sd22229); end
            12'd1563: begin twiddle_real = -(16'sd24110); twiddle_imag = -(16'sd22192); end
            12'd1564: begin twiddle_real = -(16'sd24145); twiddle_imag = -(16'sd22155); end
            12'd1565: begin twiddle_real = -(16'sd24178); twiddle_imag = -(16'sd22118); end
            12'd1566: begin twiddle_real = -(16'sd24212); twiddle_imag = -(16'sd22081); end
            12'd1567: begin twiddle_real = -(16'sd24246); twiddle_imag = -(16'sd22043); end
            12'd1568: begin twiddle_real = -(16'sd24280); twiddle_imag = -(16'sd22006); end
            12'd1569: begin twiddle_real = -(16'sd24314); twiddle_imag = -(16'sd21969); end
            12'd1570: begin twiddle_real = -(16'sd24347); twiddle_imag = -(16'sd21932); end
            12'd1571: begin twiddle_real = -(16'sd24381); twiddle_imag = -(16'sd21894); end
            12'd1572: begin twiddle_real = -(16'sd24415); twiddle_imag = -(16'sd21857); end
            12'd1573: begin twiddle_real = -(16'sd24448); twiddle_imag = -(16'sd21819); end
            12'd1574: begin twiddle_real = -(16'sd24481); twiddle_imag = -(16'sd21782); end
            12'd1575: begin twiddle_real = -(16'sd24515); twiddle_imag = -(16'sd21744); end
            12'd1576: begin twiddle_real = -(16'sd24548); twiddle_imag = -(16'sd21707); end
            12'd1577: begin twiddle_real = -(16'sd24581); twiddle_imag = -(16'sd21669); end
            12'd1578: begin twiddle_real = -(16'sd24615); twiddle_imag = -(16'sd21631); end
            12'd1579: begin twiddle_real = -(16'sd24648); twiddle_imag = -(16'sd21593); end
            12'd1580: begin twiddle_real = -(16'sd24681); twiddle_imag = -(16'sd21556); end
            12'd1581: begin twiddle_real = -(16'sd24714); twiddle_imag = -(16'sd21518); end
            12'd1582: begin twiddle_real = -(16'sd24747); twiddle_imag = -(16'sd21480); end
            12'd1583: begin twiddle_real = -(16'sd24780); twiddle_imag = -(16'sd21442); end
            12'd1584: begin twiddle_real = -(16'sd24813); twiddle_imag = -(16'sd21404); end
            12'd1585: begin twiddle_real = -(16'sd24846); twiddle_imag = -(16'sd21366); end
            12'd1586: begin twiddle_real = -(16'sd24878); twiddle_imag = -(16'sd21327); end
            12'd1587: begin twiddle_real = -(16'sd24911); twiddle_imag = -(16'sd21289); end
            12'd1588: begin twiddle_real = -(16'sd24944); twiddle_imag = -(16'sd21251); end
            12'd1589: begin twiddle_real = -(16'sd24976); twiddle_imag = -(16'sd21213); end
            12'd1590: begin twiddle_real = -(16'sd25009); twiddle_imag = -(16'sd21174); end
            12'd1591: begin twiddle_real = -(16'sd25041); twiddle_imag = -(16'sd21136); end
            12'd1592: begin twiddle_real = -(16'sd25074); twiddle_imag = -(16'sd21098); end
            12'd1593: begin twiddle_real = -(16'sd25106); twiddle_imag = -(16'sd21059); end
            12'd1594: begin twiddle_real = -(16'sd25138); twiddle_imag = -(16'sd21021); end
            12'd1595: begin twiddle_real = -(16'sd25170); twiddle_imag = -(16'sd20982); end
            12'd1596: begin twiddle_real = -(16'sd25202); twiddle_imag = -(16'sd20943); end
            12'd1597: begin twiddle_real = -(16'sd25235); twiddle_imag = -(16'sd20905); end
            12'd1598: begin twiddle_real = -(16'sd25267); twiddle_imag = -(16'sd20866); end
            12'd1599: begin twiddle_real = -(16'sd25299); twiddle_imag = -(16'sd20827); end
            12'd1600: begin twiddle_real = -(16'sd25331); twiddle_imag = -(16'sd20788); end
            12'd1601: begin twiddle_real = -(16'sd25362); twiddle_imag = -(16'sd20749); end
            12'd1602: begin twiddle_real = -(16'sd25394); twiddle_imag = -(16'sd20710); end
            12'd1603: begin twiddle_real = -(16'sd25426); twiddle_imag = -(16'sd20672); end
            12'd1604: begin twiddle_real = -(16'sd25458); twiddle_imag = -(16'sd20632); end
            12'd1605: begin twiddle_real = -(16'sd25489); twiddle_imag = -(16'sd20593); end
            12'd1606: begin twiddle_real = -(16'sd25521); twiddle_imag = -(16'sd20554); end
            12'd1607: begin twiddle_real = -(16'sd25552); twiddle_imag = -(16'sd20515); end
            12'd1608: begin twiddle_real = -(16'sd25584); twiddle_imag = -(16'sd20476); end
            12'd1609: begin twiddle_real = -(16'sd25615); twiddle_imag = -(16'sd20437); end
            12'd1610: begin twiddle_real = -(16'sd25646); twiddle_imag = -(16'sd20397); end
            12'd1611: begin twiddle_real = -(16'sd25678); twiddle_imag = -(16'sd20358); end
            12'd1612: begin twiddle_real = -(16'sd25709); twiddle_imag = -(16'sd20319); end
            12'd1613: begin twiddle_real = -(16'sd25740); twiddle_imag = -(16'sd20279); end
            12'd1614: begin twiddle_real = -(16'sd25771); twiddle_imag = -(16'sd20240); end
            12'd1615: begin twiddle_real = -(16'sd25802); twiddle_imag = -(16'sd20200); end
            12'd1616: begin twiddle_real = -(16'sd25833); twiddle_imag = -(16'sd20160); end
            12'd1617: begin twiddle_real = -(16'sd25864); twiddle_imag = -(16'sd20121); end
            12'd1618: begin twiddle_real = -(16'sd25895); twiddle_imag = -(16'sd20081); end
            12'd1619: begin twiddle_real = -(16'sd25926); twiddle_imag = -(16'sd20041); end
            12'd1620: begin twiddle_real = -(16'sd25956); twiddle_imag = -(16'sd20002); end
            12'd1621: begin twiddle_real = -(16'sd25987); twiddle_imag = -(16'sd19962); end
            12'd1622: begin twiddle_real = -(16'sd26017); twiddle_imag = -(16'sd19922); end
            12'd1623: begin twiddle_real = -(16'sd26048); twiddle_imag = -(16'sd19882); end
            12'd1624: begin twiddle_real = -(16'sd26078); twiddle_imag = -(16'sd19842); end
            12'd1625: begin twiddle_real = -(16'sd26109); twiddle_imag = -(16'sd19802); end
            12'd1626: begin twiddle_real = -(16'sd26139); twiddle_imag = -(16'sd19762); end
            12'd1627: begin twiddle_real = -(16'sd26170); twiddle_imag = -(16'sd19722); end
            12'd1628: begin twiddle_real = -(16'sd26200); twiddle_imag = -(16'sd19682); end
            12'd1629: begin twiddle_real = -(16'sd26230); twiddle_imag = -(16'sd19641); end
            12'd1630: begin twiddle_real = -(16'sd26260); twiddle_imag = -(16'sd19601); end
            12'd1631: begin twiddle_real = -(16'sd26290); twiddle_imag = -(16'sd19561); end
            12'd1632: begin twiddle_real = -(16'sd26320); twiddle_imag = -(16'sd19520); end
            12'd1633: begin twiddle_real = -(16'sd26350); twiddle_imag = -(16'sd19480); end
            12'd1634: begin twiddle_real = -(16'sd26380); twiddle_imag = -(16'sd19440); end
            12'd1635: begin twiddle_real = -(16'sd26410); twiddle_imag = -(16'sd19399); end
            12'd1636: begin twiddle_real = -(16'sd26439); twiddle_imag = -(16'sd19359); end
            12'd1637: begin twiddle_real = -(16'sd26469); twiddle_imag = -(16'sd19318); end
            12'd1638: begin twiddle_real = -(16'sd26499); twiddle_imag = -(16'sd19277); end
            12'd1639: begin twiddle_real = -(16'sd26528); twiddle_imag = -(16'sd19237); end
            12'd1640: begin twiddle_real = -(16'sd26558); twiddle_imag = -(16'sd19196); end
            12'd1641: begin twiddle_real = -(16'sd26587); twiddle_imag = -(16'sd19155); end
            12'd1642: begin twiddle_real = -(16'sd26616); twiddle_imag = -(16'sd19114); end
            12'd1643: begin twiddle_real = -(16'sd26646); twiddle_imag = -(16'sd19074); end
            12'd1644: begin twiddle_real = -(16'sd26675); twiddle_imag = -(16'sd19033); end
            12'd1645: begin twiddle_real = -(16'sd26704); twiddle_imag = -(16'sd18992); end
            12'd1646: begin twiddle_real = -(16'sd26733); twiddle_imag = -(16'sd18951); end
            12'd1647: begin twiddle_real = -(16'sd26762); twiddle_imag = -(16'sd18910); end
            12'd1648: begin twiddle_real = -(16'sd26791); twiddle_imag = -(16'sd18869); end
            12'd1649: begin twiddle_real = -(16'sd26820); twiddle_imag = -(16'sd18827); end
            12'd1650: begin twiddle_real = -(16'sd26849); twiddle_imag = -(16'sd18786); end
            12'd1651: begin twiddle_real = -(16'sd26878); twiddle_imag = -(16'sd18745); end
            12'd1652: begin twiddle_real = -(16'sd26906); twiddle_imag = -(16'sd18704); end
            12'd1653: begin twiddle_real = -(16'sd26935); twiddle_imag = -(16'sd18663); end
            12'd1654: begin twiddle_real = -(16'sd26964); twiddle_imag = -(16'sd18621); end
            12'd1655: begin twiddle_real = -(16'sd26992); twiddle_imag = -(16'sd18580); end
            12'd1656: begin twiddle_real = -(16'sd27021); twiddle_imag = -(16'sd18538); end
            12'd1657: begin twiddle_real = -(16'sd27049); twiddle_imag = -(16'sd18497); end
            12'd1658: begin twiddle_real = -(16'sd27077); twiddle_imag = -(16'sd18455); end
            12'd1659: begin twiddle_real = -(16'sd27106); twiddle_imag = -(16'sd18414); end
            12'd1660: begin twiddle_real = -(16'sd27134); twiddle_imag = -(16'sd18372); end
            12'd1661: begin twiddle_real = -(16'sd27162); twiddle_imag = -(16'sd18331); end
            12'd1662: begin twiddle_real = -(16'sd27190); twiddle_imag = -(16'sd18289); end
            12'd1663: begin twiddle_real = -(16'sd27218); twiddle_imag = -(16'sd18247); end
            12'd1664: begin twiddle_real = -(16'sd27246); twiddle_imag = -(16'sd18205); end
            12'd1665: begin twiddle_real = -(16'sd27274); twiddle_imag = -(16'sd18164); end
            12'd1666: begin twiddle_real = -(16'sd27302); twiddle_imag = -(16'sd18122); end
            12'd1667: begin twiddle_real = -(16'sd27330); twiddle_imag = -(16'sd18080); end
            12'd1668: begin twiddle_real = -(16'sd27357); twiddle_imag = -(16'sd18038); end
            12'd1669: begin twiddle_real = -(16'sd27385); twiddle_imag = -(16'sd17996); end
            12'd1670: begin twiddle_real = -(16'sd27412); twiddle_imag = -(16'sd17954); end
            12'd1671: begin twiddle_real = -(16'sd27440); twiddle_imag = -(16'sd17912); end
            12'd1672: begin twiddle_real = -(16'sd27467); twiddle_imag = -(16'sd17870); end
            12'd1673: begin twiddle_real = -(16'sd27495); twiddle_imag = -(16'sd17828); end
            12'd1674: begin twiddle_real = -(16'sd27522); twiddle_imag = -(16'sd17785); end
            12'd1675: begin twiddle_real = -(16'sd27549); twiddle_imag = -(16'sd17743); end
            12'd1676: begin twiddle_real = -(16'sd27577); twiddle_imag = -(16'sd17701); end
            12'd1677: begin twiddle_real = -(16'sd27604); twiddle_imag = -(16'sd17659); end
            12'd1678: begin twiddle_real = -(16'sd27631); twiddle_imag = -(16'sd17616); end
            12'd1679: begin twiddle_real = -(16'sd27658); twiddle_imag = -(16'sd17574); end
            12'd1680: begin twiddle_real = -(16'sd27685); twiddle_imag = -(16'sd17531); end
            12'd1681: begin twiddle_real = -(16'sd27712); twiddle_imag = -(16'sd17489); end
            12'd1682: begin twiddle_real = -(16'sd27738); twiddle_imag = -(16'sd17446); end
            12'd1683: begin twiddle_real = -(16'sd27765); twiddle_imag = -(16'sd17404); end
            12'd1684: begin twiddle_real = -(16'sd27792); twiddle_imag = -(16'sd17361); end
            12'd1685: begin twiddle_real = -(16'sd27818); twiddle_imag = -(16'sd17318); end
            12'd1686: begin twiddle_real = -(16'sd27845); twiddle_imag = -(16'sd17276); end
            12'd1687: begin twiddle_real = -(16'sd27871); twiddle_imag = -(16'sd17233); end
            12'd1688: begin twiddle_real = -(16'sd27898); twiddle_imag = -(16'sd17190); end
            12'd1689: begin twiddle_real = -(16'sd27924); twiddle_imag = -(16'sd17147); end
            12'd1690: begin twiddle_real = -(16'sd27950); twiddle_imag = -(16'sd17105); end
            12'd1691: begin twiddle_real = -(16'sd27977); twiddle_imag = -(16'sd17062); end
            12'd1692: begin twiddle_real = -(16'sd28003); twiddle_imag = -(16'sd17019); end
            12'd1693: begin twiddle_real = -(16'sd28029); twiddle_imag = -(16'sd16976); end
            12'd1694: begin twiddle_real = -(16'sd28055); twiddle_imag = -(16'sd16933); end
            12'd1695: begin twiddle_real = -(16'sd28081); twiddle_imag = -(16'sd16890); end
            12'd1696: begin twiddle_real = -(16'sd28107); twiddle_imag = -(16'sd16847); end
            12'd1697: begin twiddle_real = -(16'sd28132); twiddle_imag = -(16'sd16803); end
            12'd1698: begin twiddle_real = -(16'sd28158); twiddle_imag = -(16'sd16760); end
            12'd1699: begin twiddle_real = -(16'sd28184); twiddle_imag = -(16'sd16717); end
            12'd1700: begin twiddle_real = -(16'sd28209); twiddle_imag = -(16'sd16674); end
            12'd1701: begin twiddle_real = -(16'sd28235); twiddle_imag = -(16'sd16631); end
            12'd1702: begin twiddle_real = -(16'sd28260); twiddle_imag = -(16'sd16587); end
            12'd1703: begin twiddle_real = -(16'sd28286); twiddle_imag = -(16'sd16544); end
            12'd1704: begin twiddle_real = -(16'sd28311); twiddle_imag = -(16'sd16500); end
            12'd1705: begin twiddle_real = -(16'sd28336); twiddle_imag = -(16'sd16457); end
            12'd1706: begin twiddle_real = -(16'sd28362); twiddle_imag = -(16'sd16414); end
            12'd1707: begin twiddle_real = -(16'sd28387); twiddle_imag = -(16'sd16370); end
            12'd1708: begin twiddle_real = -(16'sd28412); twiddle_imag = -(16'sd16326); end
            12'd1709: begin twiddle_real = -(16'sd28437); twiddle_imag = -(16'sd16283); end
            12'd1710: begin twiddle_real = -(16'sd28462); twiddle_imag = -(16'sd16239); end
            12'd1711: begin twiddle_real = -(16'sd28487); twiddle_imag = -(16'sd16196); end
            12'd1712: begin twiddle_real = -(16'sd28512); twiddle_imag = -(16'sd16152); end
            12'd1713: begin twiddle_real = -(16'sd28536); twiddle_imag = -(16'sd16108); end
            12'd1714: begin twiddle_real = -(16'sd28561); twiddle_imag = -(16'sd16064); end
            12'd1715: begin twiddle_real = -(16'sd28586); twiddle_imag = -(16'sd16020); end
            12'd1716: begin twiddle_real = -(16'sd28610); twiddle_imag = -(16'sd15977); end
            12'd1717: begin twiddle_real = -(16'sd28635); twiddle_imag = -(16'sd15933); end
            12'd1718: begin twiddle_real = -(16'sd28659); twiddle_imag = -(16'sd15889); end
            12'd1719: begin twiddle_real = -(16'sd28683); twiddle_imag = -(16'sd15845); end
            12'd1720: begin twiddle_real = -(16'sd28708); twiddle_imag = -(16'sd15801); end
            12'd1721: begin twiddle_real = -(16'sd28732); twiddle_imag = -(16'sd15757); end
            12'd1722: begin twiddle_real = -(16'sd28756); twiddle_imag = -(16'sd15713); end
            12'd1723: begin twiddle_real = -(16'sd28780); twiddle_imag = -(16'sd15668); end
            12'd1724: begin twiddle_real = -(16'sd28804); twiddle_imag = -(16'sd15624); end
            12'd1725: begin twiddle_real = -(16'sd28828); twiddle_imag = -(16'sd15580); end
            12'd1726: begin twiddle_real = -(16'sd28852); twiddle_imag = -(16'sd15536); end
            12'd1727: begin twiddle_real = -(16'sd28876); twiddle_imag = -(16'sd15492); end
            12'd1728: begin twiddle_real = -(16'sd28899); twiddle_imag = -(16'sd15447); end
            12'd1729: begin twiddle_real = -(16'sd28923); twiddle_imag = -(16'sd15403); end
            12'd1730: begin twiddle_real = -(16'sd28947); twiddle_imag = -(16'sd15358); end
            12'd1731: begin twiddle_real = -(16'sd28970); twiddle_imag = -(16'sd15314); end
            12'd1732: begin twiddle_real = -(16'sd28994); twiddle_imag = -(16'sd15270); end
            12'd1733: begin twiddle_real = -(16'sd29017); twiddle_imag = -(16'sd15225); end
            12'd1734: begin twiddle_real = -(16'sd29040); twiddle_imag = -(16'sd15181); end
            12'd1735: begin twiddle_real = -(16'sd29063); twiddle_imag = -(16'sd15136); end
            12'd1736: begin twiddle_real = -(16'sd29087); twiddle_imag = -(16'sd15091); end
            12'd1737: begin twiddle_real = -(16'sd29110); twiddle_imag = -(16'sd15047); end
            12'd1738: begin twiddle_real = -(16'sd29133); twiddle_imag = -(16'sd15002); end
            12'd1739: begin twiddle_real = -(16'sd29156); twiddle_imag = -(16'sd14957); end
            12'd1740: begin twiddle_real = -(16'sd29179); twiddle_imag = -(16'sd14913); end
            12'd1741: begin twiddle_real = -(16'sd29202); twiddle_imag = -(16'sd14868); end
            12'd1742: begin twiddle_real = -(16'sd29224); twiddle_imag = -(16'sd14823); end
            12'd1743: begin twiddle_real = -(16'sd29247); twiddle_imag = -(16'sd14778); end
            12'd1744: begin twiddle_real = -(16'sd29270); twiddle_imag = -(16'sd14733); end
            12'd1745: begin twiddle_real = -(16'sd29292); twiddle_imag = -(16'sd14688); end
            12'd1746: begin twiddle_real = -(16'sd29315); twiddle_imag = -(16'sd14643); end
            12'd1747: begin twiddle_real = -(16'sd29337); twiddle_imag = -(16'sd14599); end
            12'd1748: begin twiddle_real = -(16'sd29360); twiddle_imag = -(16'sd14553); end
            12'd1749: begin twiddle_real = -(16'sd29382); twiddle_imag = -(16'sd14508); end
            12'd1750: begin twiddle_real = -(16'sd29404); twiddle_imag = -(16'sd14463); end
            12'd1751: begin twiddle_real = -(16'sd29426); twiddle_imag = -(16'sd14418); end
            12'd1752: begin twiddle_real = -(16'sd29448); twiddle_imag = -(16'sd14373); end
            12'd1753: begin twiddle_real = -(16'sd29470); twiddle_imag = -(16'sd14328); end
            12'd1754: begin twiddle_real = -(16'sd29492); twiddle_imag = -(16'sd14283); end
            12'd1755: begin twiddle_real = -(16'sd29514); twiddle_imag = -(16'sd14237); end
            12'd1756: begin twiddle_real = -(16'sd29536); twiddle_imag = -(16'sd14192); end
            12'd1757: begin twiddle_real = -(16'sd29558); twiddle_imag = -(16'sd14147); end
            12'd1758: begin twiddle_real = -(16'sd29579); twiddle_imag = -(16'sd14101); end
            12'd1759: begin twiddle_real = -(16'sd29601); twiddle_imag = -(16'sd14056); end
            12'd1760: begin twiddle_real = -(16'sd29622); twiddle_imag = -(16'sd14011); end
            12'd1761: begin twiddle_real = -(16'sd29644); twiddle_imag = -(16'sd13965); end
            12'd1762: begin twiddle_real = -(16'sd29665); twiddle_imag = -(16'sd13920); end
            12'd1763: begin twiddle_real = -(16'sd29687); twiddle_imag = -(16'sd13874); end
            12'd1764: begin twiddle_real = -(16'sd29708); twiddle_imag = -(16'sd13829); end
            12'd1765: begin twiddle_real = -(16'sd29729); twiddle_imag = -(16'sd13783); end
            12'd1766: begin twiddle_real = -(16'sd29750); twiddle_imag = -(16'sd13737); end
            12'd1767: begin twiddle_real = -(16'sd29771); twiddle_imag = -(16'sd13692); end
            12'd1768: begin twiddle_real = -(16'sd29792); twiddle_imag = -(16'sd13646); end
            12'd1769: begin twiddle_real = -(16'sd29813); twiddle_imag = -(16'sd13600); end
            12'd1770: begin twiddle_real = -(16'sd29834); twiddle_imag = -(16'sd13555); end
            12'd1771: begin twiddle_real = -(16'sd29855); twiddle_imag = -(16'sd13509); end
            12'd1772: begin twiddle_real = -(16'sd29875); twiddle_imag = -(16'sd13463); end
            12'd1773: begin twiddle_real = -(16'sd29896); twiddle_imag = -(16'sd13417); end
            12'd1774: begin twiddle_real = -(16'sd29916); twiddle_imag = -(16'sd13371); end
            12'd1775: begin twiddle_real = -(16'sd29937); twiddle_imag = -(16'sd13325); end
            12'd1776: begin twiddle_real = -(16'sd29957); twiddle_imag = -(16'sd13279); end
            12'd1777: begin twiddle_real = -(16'sd29978); twiddle_imag = -(16'sd13233); end
            12'd1778: begin twiddle_real = -(16'sd29998); twiddle_imag = -(16'sd13187); end
            12'd1779: begin twiddle_real = -(16'sd30018); twiddle_imag = -(16'sd13141); end
            12'd1780: begin twiddle_real = -(16'sd30038); twiddle_imag = -(16'sd13095); end
            12'd1781: begin twiddle_real = -(16'sd30058); twiddle_imag = -(16'sd13049); end
            12'd1782: begin twiddle_real = -(16'sd30078); twiddle_imag = -(16'sd13003); end
            12'd1783: begin twiddle_real = -(16'sd30098); twiddle_imag = -(16'sd12957); end
            12'd1784: begin twiddle_real = -(16'sd30118); twiddle_imag = -(16'sd12911); end
            12'd1785: begin twiddle_real = -(16'sd30138); twiddle_imag = -(16'sd12865); end
            12'd1786: begin twiddle_real = -(16'sd30157); twiddle_imag = -(16'sd12818); end
            12'd1787: begin twiddle_real = -(16'sd30177); twiddle_imag = -(16'sd12772); end
            12'd1788: begin twiddle_real = -(16'sd30197); twiddle_imag = -(16'sd12726); end
            12'd1789: begin twiddle_real = -(16'sd30216); twiddle_imag = -(16'sd12679); end
            12'd1790: begin twiddle_real = -(16'sd30236); twiddle_imag = -(16'sd12633); end
            12'd1791: begin twiddle_real = -(16'sd30255); twiddle_imag = -(16'sd12587); end
            12'd1792: begin twiddle_real = -(16'sd30274); twiddle_imag = -(16'sd12540); end
            12'd1793: begin twiddle_real = -(16'sd30293); twiddle_imag = -(16'sd12494); end
            12'd1794: begin twiddle_real = -(16'sd30313); twiddle_imag = -(16'sd12447); end
            12'd1795: begin twiddle_real = -(16'sd30332); twiddle_imag = -(16'sd12401); end
            12'd1796: begin twiddle_real = -(16'sd30351); twiddle_imag = -(16'sd12354); end
            12'd1797: begin twiddle_real = -(16'sd30369); twiddle_imag = -(16'sd12308); end
            12'd1798: begin twiddle_real = -(16'sd30388); twiddle_imag = -(16'sd12261); end
            12'd1799: begin twiddle_real = -(16'sd30407); twiddle_imag = -(16'sd12214); end
            12'd1800: begin twiddle_real = -(16'sd30426); twiddle_imag = -(16'sd12168); end
            12'd1801: begin twiddle_real = -(16'sd30444); twiddle_imag = -(16'sd12121); end
            12'd1802: begin twiddle_real = -(16'sd30463); twiddle_imag = -(16'sd12074); end
            12'd1803: begin twiddle_real = -(16'sd30481); twiddle_imag = -(16'sd12028); end
            12'd1804: begin twiddle_real = -(16'sd30500); twiddle_imag = -(16'sd11981); end
            12'd1805: begin twiddle_real = -(16'sd30518); twiddle_imag = -(16'sd11934); end
            12'd1806: begin twiddle_real = -(16'sd30536); twiddle_imag = -(16'sd11887); end
            12'd1807: begin twiddle_real = -(16'sd30555); twiddle_imag = -(16'sd11840); end
            12'd1808: begin twiddle_real = -(16'sd30573); twiddle_imag = -(16'sd11794); end
            12'd1809: begin twiddle_real = -(16'sd30591); twiddle_imag = -(16'sd11747); end
            12'd1810: begin twiddle_real = -(16'sd30609); twiddle_imag = -(16'sd11700); end
            12'd1811: begin twiddle_real = -(16'sd30627); twiddle_imag = -(16'sd11653); end
            12'd1812: begin twiddle_real = -(16'sd30645); twiddle_imag = -(16'sd11606); end
            12'd1813: begin twiddle_real = -(16'sd30662); twiddle_imag = -(16'sd11559); end
            12'd1814: begin twiddle_real = -(16'sd30680); twiddle_imag = -(16'sd11512); end
            12'd1815: begin twiddle_real = -(16'sd30698); twiddle_imag = -(16'sd11465); end
            12'd1816: begin twiddle_real = -(16'sd30715); twiddle_imag = -(16'sd11417); end
            12'd1817: begin twiddle_real = -(16'sd30733); twiddle_imag = -(16'sd11370); end
            12'd1818: begin twiddle_real = -(16'sd30750); twiddle_imag = -(16'sd11323); end
            12'd1819: begin twiddle_real = -(16'sd30767); twiddle_imag = -(16'sd11276); end
            12'd1820: begin twiddle_real = -(16'sd30785); twiddle_imag = -(16'sd11229); end
            12'd1821: begin twiddle_real = -(16'sd30802); twiddle_imag = -(16'sd11182); end
            12'd1822: begin twiddle_real = -(16'sd30819); twiddle_imag = -(16'sd11134); end
            12'd1823: begin twiddle_real = -(16'sd30836); twiddle_imag = -(16'sd11087); end
            12'd1824: begin twiddle_real = -(16'sd30853); twiddle_imag = -(16'sd11040); end
            12'd1825: begin twiddle_real = -(16'sd30870); twiddle_imag = -(16'sd10992); end
            12'd1826: begin twiddle_real = -(16'sd30887); twiddle_imag = -(16'sd10945); end
            12'd1827: begin twiddle_real = -(16'sd30903); twiddle_imag = -(16'sd10898); end
            12'd1828: begin twiddle_real = -(16'sd30920); twiddle_imag = -(16'sd10850); end
            12'd1829: begin twiddle_real = -(16'sd30937); twiddle_imag = -(16'sd10803); end
            12'd1830: begin twiddle_real = -(16'sd30953); twiddle_imag = -(16'sd10755); end
            12'd1831: begin twiddle_real = -(16'sd30970); twiddle_imag = -(16'sd10708); end
            12'd1832: begin twiddle_real = -(16'sd30986); twiddle_imag = -(16'sd10660); end
            12'd1833: begin twiddle_real = -(16'sd31002); twiddle_imag = -(16'sd10613); end
            12'd1834: begin twiddle_real = -(16'sd31019); twiddle_imag = -(16'sd10565); end
            12'd1835: begin twiddle_real = -(16'sd31035); twiddle_imag = -(16'sd10518); end
            12'd1836: begin twiddle_real = -(16'sd31051); twiddle_imag = -(16'sd10470); end
            12'd1837: begin twiddle_real = -(16'sd31067); twiddle_imag = -(16'sd10422); end
            12'd1838: begin twiddle_real = -(16'sd31083); twiddle_imag = -(16'sd10375); end
            12'd1839: begin twiddle_real = -(16'sd31099); twiddle_imag = -(16'sd10327); end
            12'd1840: begin twiddle_real = -(16'sd31115); twiddle_imag = -(16'sd10279); end
            12'd1841: begin twiddle_real = -(16'sd31130); twiddle_imag = -(16'sd10231); end
            12'd1842: begin twiddle_real = -(16'sd31146); twiddle_imag = -(16'sd10184); end
            12'd1843: begin twiddle_real = -(16'sd31162); twiddle_imag = -(16'sd10136); end
            12'd1844: begin twiddle_real = -(16'sd31177); twiddle_imag = -(16'sd10088); end
            12'd1845: begin twiddle_real = -(16'sd31193); twiddle_imag = -(16'sd10040); end
            12'd1846: begin twiddle_real = -(16'sd31208); twiddle_imag = -(16'sd9992); end
            12'd1847: begin twiddle_real = -(16'sd31223); twiddle_imag = -(16'sd9945); end
            12'd1848: begin twiddle_real = -(16'sd31238); twiddle_imag = -(16'sd9897); end
            12'd1849: begin twiddle_real = -(16'sd31254); twiddle_imag = -(16'sd9849); end
            12'd1850: begin twiddle_real = -(16'sd31269); twiddle_imag = -(16'sd9801); end
            12'd1851: begin twiddle_real = -(16'sd31284); twiddle_imag = -(16'sd9753); end
            12'd1852: begin twiddle_real = -(16'sd31299); twiddle_imag = -(16'sd9705); end
            12'd1853: begin twiddle_real = -(16'sd31313); twiddle_imag = -(16'sd9657); end
            12'd1854: begin twiddle_real = -(16'sd31328); twiddle_imag = -(16'sd9609); end
            12'd1855: begin twiddle_real = -(16'sd31343); twiddle_imag = -(16'sd9561); end
            12'd1856: begin twiddle_real = -(16'sd31358); twiddle_imag = -(16'sd9513); end
            12'd1857: begin twiddle_real = -(16'sd31372); twiddle_imag = -(16'sd9464); end
            12'd1858: begin twiddle_real = -(16'sd31387); twiddle_imag = -(16'sd9416); end
            12'd1859: begin twiddle_real = -(16'sd31401); twiddle_imag = -(16'sd9368); end
            12'd1860: begin twiddle_real = -(16'sd31415); twiddle_imag = -(16'sd9320); end
            12'd1861: begin twiddle_real = -(16'sd31430); twiddle_imag = -(16'sd9272); end
            12'd1862: begin twiddle_real = -(16'sd31444); twiddle_imag = -(16'sd9224); end
            12'd1863: begin twiddle_real = -(16'sd31458); twiddle_imag = -(16'sd9175); end
            12'd1864: begin twiddle_real = -(16'sd31472); twiddle_imag = -(16'sd9127); end
            12'd1865: begin twiddle_real = -(16'sd31486); twiddle_imag = -(16'sd9079); end
            12'd1866: begin twiddle_real = -(16'sd31500); twiddle_imag = -(16'sd9030); end
            12'd1867: begin twiddle_real = -(16'sd31514); twiddle_imag = -(16'sd8982); end
            12'd1868: begin twiddle_real = -(16'sd31527); twiddle_imag = -(16'sd8934); end
            12'd1869: begin twiddle_real = -(16'sd31541); twiddle_imag = -(16'sd8885); end
            12'd1870: begin twiddle_real = -(16'sd31555); twiddle_imag = -(16'sd8837); end
            12'd1871: begin twiddle_real = -(16'sd31568); twiddle_imag = -(16'sd8789); end
            12'd1872: begin twiddle_real = -(16'sd31582); twiddle_imag = -(16'sd8740); end
            12'd1873: begin twiddle_real = -(16'sd31595); twiddle_imag = -(16'sd8692); end
            12'd1874: begin twiddle_real = -(16'sd31608); twiddle_imag = -(16'sd8643); end
            12'd1875: begin twiddle_real = -(16'sd31621); twiddle_imag = -(16'sd8595); end
            12'd1876: begin twiddle_real = -(16'sd31635); twiddle_imag = -(16'sd8546); end
            12'd1877: begin twiddle_real = -(16'sd31648); twiddle_imag = -(16'sd8498); end
            12'd1878: begin twiddle_real = -(16'sd31661); twiddle_imag = -(16'sd8449); end
            12'd1879: begin twiddle_real = -(16'sd31674); twiddle_imag = -(16'sd8401); end
            12'd1880: begin twiddle_real = -(16'sd31686); twiddle_imag = -(16'sd8352); end
            12'd1881: begin twiddle_real = -(16'sd31699); twiddle_imag = -(16'sd8303); end
            12'd1882: begin twiddle_real = -(16'sd31712); twiddle_imag = -(16'sd8255); end
            12'd1883: begin twiddle_real = -(16'sd31724); twiddle_imag = -(16'sd8206); end
            12'd1884: begin twiddle_real = -(16'sd31737); twiddle_imag = -(16'sd8157); end
            12'd1885: begin twiddle_real = -(16'sd31750); twiddle_imag = -(16'sd8109); end
            12'd1886: begin twiddle_real = -(16'sd31762); twiddle_imag = -(16'sd8060); end
            12'd1887: begin twiddle_real = -(16'sd31774); twiddle_imag = -(16'sd8011); end
            12'd1888: begin twiddle_real = -(16'sd31786); twiddle_imag = -(16'sd7962); end
            12'd1889: begin twiddle_real = -(16'sd31799); twiddle_imag = -(16'sd7914); end
            12'd1890: begin twiddle_real = -(16'sd31811); twiddle_imag = -(16'sd7865); end
            12'd1891: begin twiddle_real = -(16'sd31823); twiddle_imag = -(16'sd7816); end
            12'd1892: begin twiddle_real = -(16'sd31835); twiddle_imag = -(16'sd7767); end
            12'd1893: begin twiddle_real = -(16'sd31847); twiddle_imag = -(16'sd7718); end
            12'd1894: begin twiddle_real = -(16'sd31858); twiddle_imag = -(16'sd7670); end
            12'd1895: begin twiddle_real = -(16'sd31870); twiddle_imag = -(16'sd7621); end
            12'd1896: begin twiddle_real = -(16'sd31882); twiddle_imag = -(16'sd7572); end
            12'd1897: begin twiddle_real = -(16'sd31893); twiddle_imag = -(16'sd7523); end
            12'd1898: begin twiddle_real = -(16'sd31905); twiddle_imag = -(16'sd7474); end
            12'd1899: begin twiddle_real = -(16'sd31916); twiddle_imag = -(16'sd7425); end
            12'd1900: begin twiddle_real = -(16'sd31928); twiddle_imag = -(16'sd7376); end
            12'd1901: begin twiddle_real = -(16'sd31939); twiddle_imag = -(16'sd7327); end
            12'd1902: begin twiddle_real = -(16'sd31950); twiddle_imag = -(16'sd7278); end
            12'd1903: begin twiddle_real = -(16'sd31961); twiddle_imag = -(16'sd7229); end
            12'd1904: begin twiddle_real = -(16'sd31972); twiddle_imag = -(16'sd7180); end
            12'd1905: begin twiddle_real = -(16'sd31983); twiddle_imag = -(16'sd7131); end
            12'd1906: begin twiddle_real = -(16'sd31994); twiddle_imag = -(16'sd7082); end
            12'd1907: begin twiddle_real = -(16'sd32005); twiddle_imag = -(16'sd7033); end
            12'd1908: begin twiddle_real = -(16'sd32016); twiddle_imag = -(16'sd6984); end
            12'd1909: begin twiddle_real = -(16'sd32026); twiddle_imag = -(16'sd6935); end
            12'd1910: begin twiddle_real = -(16'sd32037); twiddle_imag = -(16'sd6885); end
            12'd1911: begin twiddle_real = -(16'sd32048); twiddle_imag = -(16'sd6836); end
            12'd1912: begin twiddle_real = -(16'sd32058); twiddle_imag = -(16'sd6787); end
            12'd1913: begin twiddle_real = -(16'sd32068); twiddle_imag = -(16'sd6738); end
            12'd1914: begin twiddle_real = -(16'sd32079); twiddle_imag = -(16'sd6689); end
            12'd1915: begin twiddle_real = -(16'sd32089); twiddle_imag = -(16'sd6640); end
            12'd1916: begin twiddle_real = -(16'sd32099); twiddle_imag = -(16'sd6590); end
            12'd1917: begin twiddle_real = -(16'sd32109); twiddle_imag = -(16'sd6541); end
            12'd1918: begin twiddle_real = -(16'sd32119); twiddle_imag = -(16'sd6492); end
            12'd1919: begin twiddle_real = -(16'sd32129); twiddle_imag = -(16'sd6443); end
            12'd1920: begin twiddle_real = -(16'sd32139); twiddle_imag = -(16'sd6393); end
            12'd1921: begin twiddle_real = -(16'sd32149); twiddle_imag = -(16'sd6344); end
            12'd1922: begin twiddle_real = -(16'sd32158); twiddle_imag = -(16'sd6295); end
            12'd1923: begin twiddle_real = -(16'sd32168); twiddle_imag = -(16'sd6245); end
            12'd1924: begin twiddle_real = -(16'sd32177); twiddle_imag = -(16'sd6196); end
            12'd1925: begin twiddle_real = -(16'sd32187); twiddle_imag = -(16'sd6147); end
            12'd1926: begin twiddle_real = -(16'sd32196); twiddle_imag = -(16'sd6097); end
            12'd1927: begin twiddle_real = -(16'sd32206); twiddle_imag = -(16'sd6048); end
            12'd1928: begin twiddle_real = -(16'sd32215); twiddle_imag = -(16'sd5998); end
            12'd1929: begin twiddle_real = -(16'sd32224); twiddle_imag = -(16'sd5949); end
            12'd1930: begin twiddle_real = -(16'sd32233); twiddle_imag = -(16'sd5899); end
            12'd1931: begin twiddle_real = -(16'sd32242); twiddle_imag = -(16'sd5850); end
            12'd1932: begin twiddle_real = -(16'sd32251); twiddle_imag = -(16'sd5801); end
            12'd1933: begin twiddle_real = -(16'sd32260); twiddle_imag = -(16'sd5751); end
            12'd1934: begin twiddle_real = -(16'sd32269); twiddle_imag = -(16'sd5702); end
            12'd1935: begin twiddle_real = -(16'sd32277); twiddle_imag = -(16'sd5652); end
            12'd1936: begin twiddle_real = -(16'sd32286); twiddle_imag = -(16'sd5603); end
            12'd1937: begin twiddle_real = -(16'sd32295); twiddle_imag = -(16'sd5553); end
            12'd1938: begin twiddle_real = -(16'sd32303); twiddle_imag = -(16'sd5504); end
            12'd1939: begin twiddle_real = -(16'sd32312); twiddle_imag = -(16'sd5454); end
            12'd1940: begin twiddle_real = -(16'sd32320); twiddle_imag = -(16'sd5404); end
            12'd1941: begin twiddle_real = -(16'sd32328); twiddle_imag = -(16'sd5355); end
            12'd1942: begin twiddle_real = -(16'sd32336); twiddle_imag = -(16'sd5305); end
            12'd1943: begin twiddle_real = -(16'sd32344); twiddle_imag = -(16'sd5256); end
            12'd1944: begin twiddle_real = -(16'sd32352); twiddle_imag = -(16'sd5206); end
            12'd1945: begin twiddle_real = -(16'sd32360); twiddle_imag = -(16'sd5156); end
            12'd1946: begin twiddle_real = -(16'sd32368); twiddle_imag = -(16'sd5107); end
            12'd1947: begin twiddle_real = -(16'sd32376); twiddle_imag = -(16'sd5057); end
            12'd1948: begin twiddle_real = -(16'sd32384); twiddle_imag = -(16'sd5007); end
            12'd1949: begin twiddle_real = -(16'sd32391); twiddle_imag = -(16'sd4958); end
            12'd1950: begin twiddle_real = -(16'sd32399); twiddle_imag = -(16'sd4908); end
            12'd1951: begin twiddle_real = -(16'sd32406); twiddle_imag = -(16'sd4858); end
            12'd1952: begin twiddle_real = -(16'sd32414); twiddle_imag = -(16'sd4809); end
            12'd1953: begin twiddle_real = -(16'sd32421); twiddle_imag = -(16'sd4759); end
            12'd1954: begin twiddle_real = -(16'sd32428); twiddle_imag = -(16'sd4709); end
            12'd1955: begin twiddle_real = -(16'sd32436); twiddle_imag = -(16'sd4659); end
            12'd1956: begin twiddle_real = -(16'sd32443); twiddle_imag = -(16'sd4610); end
            12'd1957: begin twiddle_real = -(16'sd32450); twiddle_imag = -(16'sd4560); end
            12'd1958: begin twiddle_real = -(16'sd32457); twiddle_imag = -(16'sd4510); end
            12'd1959: begin twiddle_real = -(16'sd32464); twiddle_imag = -(16'sd4460); end
            12'd1960: begin twiddle_real = -(16'sd32470); twiddle_imag = -(16'sd4410); end
            12'd1961: begin twiddle_real = -(16'sd32477); twiddle_imag = -(16'sd4361); end
            12'd1962: begin twiddle_real = -(16'sd32484); twiddle_imag = -(16'sd4311); end
            12'd1963: begin twiddle_real = -(16'sd32490); twiddle_imag = -(16'sd4261); end
            12'd1964: begin twiddle_real = -(16'sd32497); twiddle_imag = -(16'sd4211); end
            12'd1965: begin twiddle_real = -(16'sd32503); twiddle_imag = -(16'sd4161); end
            12'd1966: begin twiddle_real = -(16'sd32510); twiddle_imag = -(16'sd4111); end
            12'd1967: begin twiddle_real = -(16'sd32516); twiddle_imag = -(16'sd4062); end
            12'd1968: begin twiddle_real = -(16'sd32522); twiddle_imag = -(16'sd4012); end
            12'd1969: begin twiddle_real = -(16'sd32528); twiddle_imag = -(16'sd3962); end
            12'd1970: begin twiddle_real = -(16'sd32534); twiddle_imag = -(16'sd3912); end
            12'd1971: begin twiddle_real = -(16'sd32540); twiddle_imag = -(16'sd3862); end
            12'd1972: begin twiddle_real = -(16'sd32546); twiddle_imag = -(16'sd3812); end
            12'd1973: begin twiddle_real = -(16'sd32552); twiddle_imag = -(16'sd3762); end
            12'd1974: begin twiddle_real = -(16'sd32558); twiddle_imag = -(16'sd3712); end
            12'd1975: begin twiddle_real = -(16'sd32563); twiddle_imag = -(16'sd3662); end
            12'd1976: begin twiddle_real = -(16'sd32569); twiddle_imag = -(16'sd3612); end
            12'd1977: begin twiddle_real = -(16'sd32574); twiddle_imag = -(16'sd3562); end
            12'd1978: begin twiddle_real = -(16'sd32580); twiddle_imag = -(16'sd3512); end
            12'd1979: begin twiddle_real = -(16'sd32585); twiddle_imag = -(16'sd3462); end
            12'd1980: begin twiddle_real = -(16'sd32590); twiddle_imag = -(16'sd3412); end
            12'd1981: begin twiddle_real = -(16'sd32596); twiddle_imag = -(16'sd3362); end
            12'd1982: begin twiddle_real = -(16'sd32601); twiddle_imag = -(16'sd3312); end
            12'd1983: begin twiddle_real = -(16'sd32606); twiddle_imag = -(16'sd3262); end
            12'd1984: begin twiddle_real = -(16'sd32611); twiddle_imag = -(16'sd3212); end
            12'd1985: begin twiddle_real = -(16'sd32616); twiddle_imag = -(16'sd3162); end
            12'd1986: begin twiddle_real = -(16'sd32620); twiddle_imag = -(16'sd3112); end
            12'd1987: begin twiddle_real = -(16'sd32625); twiddle_imag = -(16'sd3062); end
            12'd1988: begin twiddle_real = -(16'sd32630); twiddle_imag = -(16'sd3012); end
            12'd1989: begin twiddle_real = -(16'sd32634); twiddle_imag = -(16'sd2962); end
            12'd1990: begin twiddle_real = -(16'sd32639); twiddle_imag = -(16'sd2912); end
            12'd1991: begin twiddle_real = -(16'sd32643); twiddle_imag = -(16'sd2862); end
            12'd1992: begin twiddle_real = -(16'sd32648); twiddle_imag = -(16'sd2812); end
            12'd1993: begin twiddle_real = -(16'sd32652); twiddle_imag = -(16'sd2762); end
            12'd1994: begin twiddle_real = -(16'sd32656); twiddle_imag = -(16'sd2712); end
            12'd1995: begin twiddle_real = -(16'sd32660); twiddle_imag = -(16'sd2662); end
            12'd1996: begin twiddle_real = -(16'sd32664); twiddle_imag = -(16'sd2612); end
            12'd1997: begin twiddle_real = -(16'sd32668); twiddle_imag = -(16'sd2561); end
            12'd1998: begin twiddle_real = -(16'sd32672); twiddle_imag = -(16'sd2511); end
            12'd1999: begin twiddle_real = -(16'sd32676); twiddle_imag = -(16'sd2461); end
            12'd2000: begin twiddle_real = -(16'sd32680); twiddle_imag = -(16'sd2411); end
            12'd2001: begin twiddle_real = -(16'sd32683); twiddle_imag = -(16'sd2361); end
            12'd2002: begin twiddle_real = -(16'sd32687); twiddle_imag = -(16'sd2311); end
            12'd2003: begin twiddle_real = -(16'sd32690); twiddle_imag = -(16'sd2261); end
            12'd2004: begin twiddle_real = -(16'sd32694); twiddle_imag = -(16'sd2211); end
            12'd2005: begin twiddle_real = -(16'sd32697); twiddle_imag = -(16'sd2160); end
            12'd2006: begin twiddle_real = -(16'sd32701); twiddle_imag = -(16'sd2110); end
            12'd2007: begin twiddle_real = -(16'sd32704); twiddle_imag = -(16'sd2060); end
            12'd2008: begin twiddle_real = -(16'sd32707); twiddle_imag = -(16'sd2010); end
            12'd2009: begin twiddle_real = -(16'sd32710); twiddle_imag = -(16'sd1960); end
            12'd2010: begin twiddle_real = -(16'sd32713); twiddle_imag = -(16'sd1910); end
            12'd2011: begin twiddle_real = -(16'sd32716); twiddle_imag = -(16'sd1859); end
            12'd2012: begin twiddle_real = -(16'sd32719); twiddle_imag = -(16'sd1809); end
            12'd2013: begin twiddle_real = -(16'sd32721); twiddle_imag = -(16'sd1759); end
            12'd2014: begin twiddle_real = -(16'sd32724); twiddle_imag = -(16'sd1709); end
            12'd2015: begin twiddle_real = -(16'sd32727); twiddle_imag = -(16'sd1659); end
            12'd2016: begin twiddle_real = -(16'sd32729); twiddle_imag = -(16'sd1608); end
            12'd2017: begin twiddle_real = -(16'sd32731); twiddle_imag = -(16'sd1558); end
            12'd2018: begin twiddle_real = -(16'sd32734); twiddle_imag = -(16'sd1508); end
            12'd2019: begin twiddle_real = -(16'sd32736); twiddle_imag = -(16'sd1458); end
            12'd2020: begin twiddle_real = -(16'sd32738); twiddle_imag = -(16'sd1408); end
            12'd2021: begin twiddle_real = -(16'sd32740); twiddle_imag = -(16'sd1357); end
            12'd2022: begin twiddle_real = -(16'sd32742); twiddle_imag = -(16'sd1307); end
            12'd2023: begin twiddle_real = -(16'sd32744); twiddle_imag = -(16'sd1257); end
            12'd2024: begin twiddle_real = -(16'sd32746); twiddle_imag = -(16'sd1207); end
            12'd2025: begin twiddle_real = -(16'sd32748); twiddle_imag = -(16'sd1156); end
            12'd2026: begin twiddle_real = -(16'sd32750); twiddle_imag = -(16'sd1106); end
            12'd2027: begin twiddle_real = -(16'sd32751); twiddle_imag = -(16'sd1056); end
            12'd2028: begin twiddle_real = -(16'sd32753); twiddle_imag = -(16'sd1006); end
            12'd2029: begin twiddle_real = -(16'sd32755); twiddle_imag = -(16'sd955); end
            12'd2030: begin twiddle_real = -(16'sd32756); twiddle_imag = -(16'sd905); end
            12'd2031: begin twiddle_real = -(16'sd32757); twiddle_imag = -(16'sd855); end
            12'd2032: begin twiddle_real = -(16'sd32759); twiddle_imag = -(16'sd805); end
            12'd2033: begin twiddle_real = -(16'sd32760); twiddle_imag = -(16'sd754); end
            12'd2034: begin twiddle_real = -(16'sd32761); twiddle_imag = -(16'sd704); end
            12'd2035: begin twiddle_real = -(16'sd32762); twiddle_imag = -(16'sd654); end
            12'd2036: begin twiddle_real = -(16'sd32763); twiddle_imag = -(16'sd604); end
            12'd2037: begin twiddle_real = -(16'sd32764); twiddle_imag = -(16'sd553); end
            12'd2038: begin twiddle_real = -(16'sd32765); twiddle_imag = -(16'sd503); end
            12'd2039: begin twiddle_real = -(16'sd32765); twiddle_imag = -(16'sd453); end
            12'd2040: begin twiddle_real = -(16'sd32766); twiddle_imag = -(16'sd403); end
            12'd2041: begin twiddle_real = -(16'sd32767); twiddle_imag = -(16'sd352); end
            12'd2042: begin twiddle_real = -(16'sd32767); twiddle_imag = -(16'sd302); end
            12'd2043: begin twiddle_real = -(16'sd32767); twiddle_imag = -(16'sd252); end
            12'd2044: begin twiddle_real = -(16'sd32767); twiddle_imag = -(16'sd202); end
            12'd2045: begin twiddle_real = -(16'sd32767); twiddle_imag = -(16'sd151); end
            12'd2046: begin twiddle_real = -(16'sd32767); twiddle_imag = -(16'sd101); end
            12'd2047: begin twiddle_real = -(16'sd32767); twiddle_imag = -(16'sd51); end
            default: begin twiddle_real = 16'sd32767; twiddle_imag = 16'sd0; end
        endcase
    end
endmodule