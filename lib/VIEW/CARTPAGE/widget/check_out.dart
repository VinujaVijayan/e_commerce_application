import 'package:e_commerce_application/CONSTANT/colors.dart';
import 'package:e_commerce_application/VIEW/CARTPAGE/controller/cart_provider.dart';
import 'package:flutter/material.dart';


class CheckOut extends StatelessWidget {
  const CheckOut({super.key});

  @override
  Widget build(BuildContext context) {
    //
    final provider=CartProvider.of(context);

    return Container(
      height: 300,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        )
      ),
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide.none
                
              ),
              contentPadding: EdgeInsets.symmetric(
                vertical: 5,
                horizontal: 15,
              ),
              filled: true,
              fillColor: Acolor.kcontentcolor,
              hintText: "Enter Discount Code",
              hintStyle: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Colors.grey
              ),
              suffixIcon: TextButton(onPressed: (){},
               child: Text("Apply",style: TextStyle(
                color: Acolor.kprimarycolor,
                fontSize: 20,
                fontWeight: FontWeight.bold
               ),))
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Subtotal',
                 style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey
                ),
              ),
              Text(
               '\$${provider.totalPrice()}',
               style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold
               ),
              )
            ],
          ),
          SizedBox(height: 10),
          Divider(),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Total',style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18
              ),),
              Text(
               '\$${provider.totalPrice()}',
               style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold
               ),
              )
            ],
          ),
          SizedBox(height: 20),
          ElevatedButton(onPressed: (){}, 
          style: ElevatedButton.styleFrom(
            backgroundColor: Acolor.kprimarycolor,
            //sdize of the button
            minimumSize: Size(double.infinity, 55)
          ),
          child: Text(
            "Check out",style: TextStyle(
              fontSize: 16,
              color: Colors.white,
              fontWeight: FontWeight.bold
            ),
          ))
        ],
      ),
    );
  }
}