<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Stock Report PDF</title>
  </head>
  <body>
    <div class="container">
      <div class="row">
        <div style="margin:0 auto; text-align:center">
          <p style="text-align:center"><b>Supplier Wise Stock Report</b></p>
          <div><img src="{{ url('public/upload/logo.png') }}" alt="" style="width:80px; height:70px;"></div>
          <strong><span style="font-size:20px; color:#28a745">Team Fix-IT IMS
          </span></strong>
          <p style="text-align: center;"><b>Tilaghor,Sylhet</b><br>Call : +8801738309749</p>
        </div>
      </div>
      <hr>
      <div class="row">
        <h3>Supplier Name : {{ $allData['0']->supplier->name }}</h3>
        <table border="1" width="100%">
            <thead>
              <tr style="background-color: #28a745;">
                <th>SL.</th>
                <th>Category</th>
                <th>Product Name</th>
                <th width="15%">In. Qty</th>
                <th width="15%">Out. Qty</th>
                <th>Stock</th>
                <th>Unit</th>
              </tr>
            </thead>
            <tbody>
              @foreach($allData as $product)
              @php
                $buying_total =  App\Model\Purchase::where('category_id',$product->category_id)->where('product_id',$product->id)->where('status','1')->sum('buying_qty');
                $selling_total =  App\Model\InvoiceDetail::where('category_id',$product->category_id)->where('product_id',$product->id)->where('status','1')->sum('selling_qty');
              @endphp
              <tr>
                <td>{{ $loop->index + 1 }}</td>
                <td>{{ $product->category->name }}</td>
                <td>{{ $product->name }}</td>
                <td>{{ $buying_total }}</td>
                <td>{{ $selling_total }}</td>
                <td>{{ $product->quantity }}</td>
                <td>{{ $product->unit->name }}</td>
              </tr>
              @endforeach
            </tbody>
        </table>
      </div>
      <div class="row">
        <div class="com-md-12">
            <?php
              $date = new DateTime('now', new DateTimeZone('Asia/Dhaka'));
             ?>
             <i style="background-color: #28a745;">Printing Time : {{ $date->format('F j, Y, g:i a') }}</i>
        </div>
      </div>
    </div>
  </body>
</html>
