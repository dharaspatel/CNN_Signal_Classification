function y = genFrame(x, windowLength, stepSize, offset, sps)
    numSamples = length(x);
    numFrames = ...
      floor(((numSamples-offset)-(windowLength-stepSize))/stepSize);

    y = zeros([windowLength,numFrames],class(x));

    startIdx = offset + randi([0 sps]);
    frameCnt = 1;
    while startIdx + windowLength < numSamples
      xWindowed = x(startIdx+(0:windowLength-1),1);
      framePower = mean(abs(xWindowed).^2);
      xWindowed = xWindowed / sqrt(framePower);
      y(:,frameCnt) = xWindowed;
      frameCnt = frameCnt + 1;
      startIdx = startIdx + stepSize;
    end
end