% Chelsea Bailey & Dhara Patel
% Analog Digital Communications

load trainedModulationClassificationNetwork

modulationTypes = categorical(["B-FM","DSB-AM","SSB-AM"]);
numFramesperModType = 100;

sps = 8;                % Samples per symbol
spf = 1024;             % Samples per frame
symbolsPerFrame = spf / sps;
freqdev = 100;
[audioSrc, fs] = audioread('audio_mix_441.wav');
fc = (fs/2)-1;
snr = 20;
po = 30;
transDelay = 50;
dataDirectory = fullfile(tempdir,"ModClassDataFiles");
fileNameRoot = "Frame";

for i = 1:length(modulationTypes)
    modType = modulationTypes(i);
    switch modType
      case "B-FM"
        modulator = @(x)fmmod(x,fc,fs,freqdev);
      case "DSB-AM"
        modulator = @(x)ammod(x,fc,fs);
      case "SSB-AM"
        modulator = @(x)ssbmod(x,fc,fs);
    end
    for j = 1:numFramesperModType
        y = modulator(audioSrc);
        rx = awgn(y,snr);
        pfo = comm.PhaseFrequencyOffset('PhaseOffset',po);
        rx = pfo(rx);
        frame = helperModClassFrameGenerator(rx, spf, spf, transDelay, sps);
          % Save data file
          fileName = fullfile(dataDirectory,...
            sprintf("%s%s%03d",fileNameRoot,modulationTypes(modType),j));
          save(fileName,"frame","modType");
    end
    
end  

helperModClassPlotSpectrogram(dataDirectory,modulationTypes,fs,sps)

% [prediction1,score1] = classify(trainedNet,unknownFrames);
