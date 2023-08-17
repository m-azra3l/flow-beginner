import NonFungibleToken from 0x02
import CryptoPoops from 0x01

transaction(recipientAccount: Address, _name: String, _favFood: String, _luckyNo: Int) {
  prepare(signer: AuthAccount) {
    // Borrow a reference to the minter
    let minter = signer.borrow<&CryptoPoops.Minter>(from: /storage/Minter)!

    // Borrow a reference to the recipient`s public Collection
    let pubrecipientRef = getAccount(recipientAccount).getCapability(/public/CryptoPoopsCollection)
                    .borrow<&CryptoPoops.Collection{NonFungibleToken.CollectionPublic}>()
                    ?? panic("There is no collection associated with the address.")

    // Mint the NFT using the reference to the minter
    let nft <- minter.createNFT(name: _name, favouriteFood: _favFood, luckyNumber: _luckyNo)
    
    // Deposit the NFT in the recipient's collection
    pubrecipientRef.deposit(token: <- nft)
  }

  execute {
    log("NFT minted and deposited successfully")
  }
}
