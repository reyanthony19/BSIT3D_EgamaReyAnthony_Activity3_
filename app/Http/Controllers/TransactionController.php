<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use App\Models\Product;


class TransactionController extends Controller
{
   public function getProducts(){
    $easy = DB::select(
       'SELECT p.* ,u.name FROM carts as c
INNER JOIN products as p ON c.products_id = p.id
INNER JOIN category as cy ON p.category_id = cy.id 
INNER JOIN brands as b ON p.brand_id = b.id
INNER JOIN users as u ON c.users_id = u.id
'

   );

    return response()->json(['Success' => true,'easy' =>$easy],200);

   
   }
   public function getProductsData() {
      $moderate = DB::table('carts as c')
          ->select(
              'c.*', 
              'u.name AS u_name', 
              'u.email AS u_email', 
              'p.name AS p_name', 
              'b.name AS p_brand', 
              'cy.name AS p_category'
          )
          ->join('products as p', 'p.id', '=', 'c.products_id')
          ->join('users as u', 'u.id', '=', 'c.users_id')
          ->join('brands as b', 'b.id', '=', 'p.brand_id')
          ->join('category as cy', 'cy.id', '=', 'p.category_id') // Corrected join condition
          ->get();
  
      return response()->json(['Success' => true, 'Moderate' => $moderate], 200);
  }
  



public function getProductsChallenge() {
   $challenging = Product::select('name', 'qty', 'price', 'description')->get();
return response()->json(['Success' => true, 'Challenge' => $challenging], 200);

}


   public function getProductsDifficult(){

      $difficult = Product::with(['carts'=>function($q){
         $q->select('*');
      }])->with(['name' => function($q){
         $q->select('*');
      }])->with(['qty'=> function($q){
         $q->select('*');
      }])->with(['price'=> function($q){
         $q->select('*');
      }])->with(['description' => function($sql){
         $sql->select('*');
      }])->get();

      return response()->json(['Success' => true,'Difficult' => $difficult]);

   }

}
