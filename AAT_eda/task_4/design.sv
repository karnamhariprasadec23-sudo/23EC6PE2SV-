//------------------------------------------------------------------------------
//File       : design.sv
//Author     : Karnam hariprasad saisahithi(1BM23EC315)
//Created    : 2026-02-24
//Project    : SystemVerilog and Verification (23EC6PE2SV),
//Faculty    : Prof. Ajaykumar Devarapalli
//Description: EthPacket class with dynamic payload and constraints.
//------------------------------------------------------------------------------

class EthPacket;

    rand int unsigned len;
    rand byte payload[];

    // Length must be between 4 and 8
    constraint c_len {
        len inside {[4:8]};
    }

    // Payload size must equal length
    constraint c_payload_size {
        payload.size() == len;
    }

    // Display packet contents
    function void display();
        $write("len=%0d payload=", len);
        foreach (payload[i])
            $write("%02x ", payload[i]);
        $write("\n");
    endfunction

endclass
