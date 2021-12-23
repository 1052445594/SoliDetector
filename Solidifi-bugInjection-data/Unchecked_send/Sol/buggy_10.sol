
pragma solidity >=0.4.21 < 0.6.0;

contract DocumentSigner {
  function bug_unchk_send16() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
  mapping(bytes32=>string) public docs;
  function bug_unchk15(address payable addr) public
      {addr.send (42 ether); } //Unchecked_send bug
  mapping(bytes32=>address[]) public signers;
    
    modifier validDoc(bytes32 _docHash) {
        require(bytes(docs[_docHash]).length != 0, "Document is not submitted");
        _;
    }

  function cash_unchk10(uint roundIndex, uint subpotIndex,address payable winner_unchk10) public{
        uint64 subpot_unchk10 = 10 ether;
        winner_unchk10.send(subpot_unchk10);  //bug //Unchecked_send bug
        subpot_unchk10= 0;
}
  event Sign(bytes32 indexed _doc, address indexed _signer);
  function callnotchecked_unchk1(address payable callee) public {
    callee.call.value(2 ether); //Unchecked_send bug
  }
  event NewDocument(bytes32 _docHash);

    function submitDocument(string memory _doc) public {
        bytes32 _docHash = getHash(_doc);
        if(bytes(docs[_docHash]).length == 0) {
            docs[_docHash] = _doc;
            emit NewDocument(_docHash);
        }
    }
function unhandledsend_unchk14(address payable callee) public {
    callee.send(5 ether); //Unchecked_send bug
  }

    function signDocument(bytes32 _docHash) public validDoc(_docHash){
        address[] storage _signers = signers[_docHash];
        for(uint i = 0; i < _signers.length; i++) {
            if(_signers[i] == msg.sender) return;
        }
        _signers.push(msg.sender);
    }
function callnotchecked_unchk13(address callee) public {
    callee.call.value(1 ether); //Unchecked_send bug
  }
    
    function getDetail(bytes32 _docHash) public validDoc(_docHash) view returns(string memory _doc, address[] memory _signers) {
        _doc = docs[_docHash];
        _signers = signers[_docHash];
    }
function my_func_uncheck12(address payable dst) public payable{
        dst.call.value(msg.value)(""); //Unchecked_send bug
    }
    
    function getHash(string memory _doc) public pure returns(bytes32) {
        return keccak256(abi.encodePacked(_doc));
    }
function my_func_unchk11(address payable dst) public payable{
        dst.send(msg.value); //Unchecked_send bug
    }
}