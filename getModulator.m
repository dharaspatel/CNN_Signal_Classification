function modulator = getModulator(modType, fs)
    switch modType
        case "B-FM"
        modulator = @(x)bfmModulator(x, fs);
      case "DSB-AM"
        modulator = @(x)dsbamModulator(x, fs);
      case "SSB-AM"
        modulator = @(x)ssbamModulator(x, fs);
    end
end
    
function y = bfmModulator(x,fs)
    persistent mod
    if isempty(mod)
      mod = comm.FMBroadcastModulator(...
        'AudioSampleRate', fs, ...
        'SampleRate', 2*fs+1);
    end
    y = mod(x);
end

function y = dsbamModulator(x,fs)
    y = ammod(x,50e3,fs);
end

function y = ssbamModulator(x,fs)
    y = ssbmod(x,50e3,fs);
end