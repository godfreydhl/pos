import 'package:flutter/material.dart';
import 'mainDrawer.dart';
import 'currencySwitch.dart';
import 'Product.dart';
import 'ProductList.dart';

class NewSale extends StatefulWidget {
  const NewSale({Key? key, required this.title}) : super(key: key);



  final String title;

  @override
  State<NewSale> createState() => _NewSaleState();
}

class _NewSaleState extends State<NewSale> {


  Widget _buildCard(Product product){
    return Card(
        elevation: 8,
        child: Container(
          height: 25,
          width:25,
          child: InkWell(
                    onTap: (){
                      null;
                    },
                  child: Column(
                    children: [
                      Text(product.name),
                      Text(product.unit),
                      Text(product.price.toString()),

                    ],
                  ),

          ),
        )
    );
  }



  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        
        title: Text(widget.title),
      ),
      drawer: MainDrawer(),

      body: Column(
        children:[
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Order #00001'),

                Container(
                  width: 200,
                  child: CurrencySwitch(),
                ),
                
                Text('Date'),
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                Expanded(
                    child: GridView.builder(
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                        ),
                        itemCount: products.length,
                        itemBuilder: (BuildContext context, int index){
                          return _buildCard(products[index]);
                        }
                    )
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        child: ListView(
                          children: [
                            ListTile(
                              title: const Text('New Sale'),
                              onTap: (){

                              },
                            ),
                            ListTile(
                              title: const Text('Inventory'),
                              onTap: (){

                              },
                            ),
                            ListTile(
                              title: const Text('Accounts'),
                              onTap: (){

                              },
                            ),
                            ListTile(
                              title: const Text('Transactions'),
                              onTap: (){

                              },
                            ),
                            ListTile(
                              title: const Text('Settings'),
                              onTap: (){

                              },
                            ),
                          ],

                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Total'),
                                Text('100.00')
                              ],
                            ),

                            Container(
                                padding: const EdgeInsets.only(left:16, top: 24),
                                child: ElevatedButton(
                                  onPressed:() {
                                    null;
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 80),
                                    child: Text(
                                      'Sign Out',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white
                                      ),
                                    ),
                                  ),
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                                  ),
                                )
                            ),

                            Container(
                                padding: const EdgeInsets.only(left:16, top: 24),
                                child: ElevatedButton(
                                  onPressed:() {
                                    null;
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 80),
                                    child: Text(
                                      'Sign Out',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white
                                      ),
                                    ),
                                  ),
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                                  ),
                                )
                            ),


                          ],

                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ]
      ),
       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}