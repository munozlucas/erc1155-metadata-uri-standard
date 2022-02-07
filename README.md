1) En bulk_mint_nft colocar las imagenes en carpeta images
2) correr script "node rename-images-to-numbered-sequence.js" para renombrar las imagenes
3) configurar en config.json el CID de ipfs de las imagenes
4) correr el script "node create-metadata.js" para generar la metadata
5) En el contrato a deployar pasar como parametro la uri: "ipfs://{CID_METADATA}/{id}.json
6) deployar el contrato