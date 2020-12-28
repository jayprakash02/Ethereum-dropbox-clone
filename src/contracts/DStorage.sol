pragma solidity ^0.5.0;

contract DStorage {
  string public name='Dstorage';
  uint public fileCount;
  mapping(uint => File)public files;
  // Struct
  struct File{
    uint fileid;
    string fileHash;
    uint fileSize;
    string fileType;
    string fileName;
    string fileDesciption;
    uint uploadTime;
    address payable uploader;
  }

  event FileUploaded(
    uint fileid,
    string fileHash,
    uint fileSize,
    string fileType,
    string fileName,
    string fileDesciption,
    uint uploadTime,
    address payable uploader
  );

  constructor() public {
  }
  function uploadFile(string memory _fileHash,uint _fileSize,string memory _fileType,string memory _fileName,string memory _fileDesciption){
    
    require(bytes(_fileHash).length >0);
    require(bytes(_fileType).length >0);
    require(bytes(_fileDesciption).length >0);
    require(bytes(_fileName).length >0);
    require(msg.sender != address(0));
    require(_fileSize > 0);

    
    
    fileCount++;
    files[fileCount]=File(fileCount,_fileHash,_fileSize,_fileType,_fileName,_fileDesciption,now,msg.sender);

    emit FileUploaded(fileCount,_fileHash,_fileSize,_fileType,_fileName,_fileDesciption,now,msg.sender);
  }
  // Upload File function

    // Make sure the file hash exists

    // Make sure file type exists

    // Make sure file description exists

    // Make sure file fileName exists

    // Make sure uploader address exists

    // Make sure file size is more than 0


    // Increment file id

    // Add File to the contract

    // Trigger an event

}