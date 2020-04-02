function imageOut = opticalPattern2(n)

    if (nargin == 0)
        n = 0;
    end    

    matrix1 = zeros(n,n,3);                             % Generate an n x n x 3 matrix of zeros
    
    for i = 1:n                                         % i is the index for rows
        for j = 1:n                                     % j is the index for columns
            if (mod(i,2) == 0 && mod(j,2) == 1)         % If the row is even and the column is odd make the pixel red
                matrix1(i,j,1) = 255;
            elseif (mod(i,2) == 1 && mod(j,2) == 0)     % If the row is odd and the column is even make the pixel blue
                matrix1(i,j,3) = 255;
            else
                matrix1(i,j,2) = 255;                   % Otherwise make the pixel green
            end
        end
    end
    
    imageOut = uint8(matrix1);                          % Convert from double to uint8
    
    figure
    image(imageOut);
    
    figure
    imshow(imageOut);
    
end