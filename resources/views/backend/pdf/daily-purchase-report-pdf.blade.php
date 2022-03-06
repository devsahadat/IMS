<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Daily Purchase Report PDF</title>
  </head>
  <body>
    <div class="container">
      <div class="row">
        <div style="margin:0 auto; text-align:center">
          <p style="text-align:center">Purchase Report ({{ date('Y-m-d', strtotime($start_date)) }} - {{ date('Y-m-d', strtotime($end_date)) }})</p>
          <div><img src="{{ url('public/upload/logo.png') }}" alt="" style="width:80px; height:70px;"></div>
          <strong><span style="font-size:20px; color:#28a745">Team Fix-IT IMS
          </span></strong>
          <p style="text-align: center;"><b>Tilaghor,Sylhet</b><br>Call : +8801738309749</p>
        </div>
      </div>
      <hr>
      <div class="row">
        <table width="100%" border="1">
            <thead>
              <tr style="background-color: #28a745;">
                <th width="5%">SL.</th>
                <th width="5%">Purchase No</th>
                <th width="10%">Date</th>
                <th width="10%">Product Name</th>
                <th width="8%">Quantity</th>
                <th width="10%">Unit Price</th>
                <th width="10%">Buyig Price</th>
              </tr>
            </thead>
            <tbody>
              @php
                $total = '0';
              @endphp
              @foreach($allData as $key => $purchase)
              <tr>

                <td>{{ $loop->index + 1 }}</td>
                <td>{{ $purchase->purchase_no }}</td>
                <td>{{ date('d-m-Y', strtotime($purchase->date)) }}</td>
                <td>{{ $purchase->product->name }}</td>
                <td>{{ $purchase->buying_qty }} {{ $purchase->product->unit->name }}</td>
                <td>{{ $purchase->unit_price }}</td>
                <td>{{ $purchase->buying_price }}</td>
              </tr>
                @php
                  $total += $purchase->buying_price;
                @endphp
              @endforeach
              <tr>
                <td  colspan="6" style="text-align:right;">Grand Total</td>
                <td style="background-color: red;"><strong>{{ $total }}</strong></td>
              </tr>
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
