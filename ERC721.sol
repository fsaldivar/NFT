// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";


contract NFTBlockchainGrill is ERC721URIStorage {
    uint256 private _counter;

    constructor() ERC721("BlockchainGrillParty", "BGP") {
        _counter =0;
    }
    
    function mint(address _receiver, string memory _tokenURI) public{
        require(_counter <100, "Minted all");
        _counter++;

        _mint(_receiver, _counter);
        _setTokenURI(_counter, _tokenURI);
    }
}
