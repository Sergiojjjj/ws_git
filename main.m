% Define the directory where your data files are located
dataDirectory = '';

% Get a list of all .txt files in the directory
fileList = dir(fullfile(dataDirectory, '*.txt'));

% Initialize a struct to store the data
data = struct();

% Loop through each file in the directory
for i = 1:length(fileList)
    % Get the file name
    filename = fullfile(dataDirectory, fileList(i).name);
    
    % Read the data from the file
    fileData = readtable(filename);
    
    % Store the data in the struct
    [~, name, ~] = fileparts(filename); % Extract file name without extension
    data.(genvarname(name)) = fileData;
end


