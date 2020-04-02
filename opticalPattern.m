function imageOut = opticalPattern(m,n)

    matrix1 = zeros(m,n,3);                 % Generate an m x n x 3 matrix of zeros
    
    matrix1(1:2:end,1:2:end,2) = 255;       % Odd rows and odd columns
    % matrix1(1:2:end,1:2:end,3) = 255;
    
    matrix1(2:2:end,2:2:end,2) = 255;       % Even rows and even columns      
    
    matrix1(1:2:end,2:2:end,3) = 255;       % Odd rows and even columns
    
    matrix1(2:2:end,1:2:end,1) = 255;       % Even rows and odd columns
    
    imageOut = uint8(matrix1);              % Convert from double to uint8
    
    figure
    image(imageOut);

    figure
    imshow(imageOut);
    
end