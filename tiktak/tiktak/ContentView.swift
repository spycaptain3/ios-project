//
//  ContentView.swift
//  tiktak
//
//  Created by Deepak Gupta on 11/01/22.
//

import SwiftUI



struct ContentView: View {
    
    //Coding part
  @State  var ima = "icon-72"
  @State  var curr = "icon-72"
    @State var pre = "icon-72"
    @State var a = "icon-72"
    @State var b = "icon-72"
    @State var c = "icon-72"
    @State var d = "icon-72"
    @State var e = "icon-72"
    @State var f = "icon-72"
    @State var g = "icon-72"
    @State var h = "icon-72"
    @State var i = "icon-72"
    @State var count = 0
    @State var score1 = 0
    @State var score2 = 0
    @State var aa:String = "z"
    @State var bb:String = "x"
    @State var cc:String = "w"
    @State var dd:String = "y"
    @State var ee:String = "r"
    @State var ff:String = "s"
    @State var gg:String = "t"
    @State var hh:String = "v"
    @State var ii:String = "m"
    
        
    
    func new()
    {
        if
            (count == 9)
        {
         a = "icon-72"
         b = "icon-72"
         c = "icon-72"
         d = "icon-72"
         e = "icon-72"
         f = "icon-72"
         g = "icon-72"
         h = "icon-72"
         i = "icon-72"
            
            aa = "z"
            bb = "x"
            cc = "w"
            dd = "y"
            ee = "r"
            ff = "s"
            gg = "t"
            hh = "v"
            ii = "m"
        }

        
       else if (aa==bb&&bb==cc)||(aa==dd&&dd==gg)||(gg==hh&&hh==ii)||(ii==ff&&ff==cc)||(cc==ee&&ee==gg)||(bb==ee&&ee==hh)||(dd==ee&&ee==ff)||(aa==ee&&ee==ii)
  {
    
        count = 0
        if curr == "icon-41"
        {
            
            score1+=1

        }
        else{
            score2+=1
        }
        a = "icon-72"
        b = "icon-72"
        c = "icon-72"
        d = "icon-72"
        e = "icon-72"
        f = "icon-72"
        g = "icon-72"
        h = "icon-72"
        i = "icon-72"
           
        aa = "z"
        bb = "x"
        cc = "w"
        dd = "y"
        ee = "r"
        ff = "s"
        gg = "t"
        hh = "v"
        ii = "m"

        }
            
  }
    
    
    var body: some View {
        
                
        
        ZStack{
        Image("tick").resizable(capInsets: EdgeInsets(top: -232.0, leading: 2.0, bottom: 555.0, trailing: 5.0))
            .padding(.all).ignoresSafeArea()
            
        .padding(.all)
            VStack{
                
                

                Text("Tick-tak-toe🤙")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(Color.red)
                    .multilineTextAlignment(.center)
                    .padding(.top)
                    .opacity(0.8)
                    .grayscale(/*@START_MENU_TOKEN@*/0.50/*@END_MENU_TOKEN@*/)
                    
                    
                Text("~Spycaptain☠️")
                    .font(.footnote)
                    .fontWeight(.heavy)
                    .foregroundColor(Color.gray)
                Spacer()
                
                HStack{
                    Spacer()
                    VStack{
                        Text("Player01:score")
                            .fontWeight(.bold)
                        Text(String(score1))
                            .foregroundColor(Color.red)
                    }
                    Spacer()
                    VStack{
                        Text("Player02:score")
                            .fontWeight(.bold)
                        Text(String(score2))
                            .foregroundColor(Color.red)
                    }
                    Spacer()
                }

                                
            }
            Spacer()
            VStack{
                Spacer()

                Spacer()

                HStack{

                    Spacer()

                    Button(action: {
                        
                        if curr == "icon-72"
                        {
                          pre = "icon-41"
                            curr = pre
                            
                        }
                        else if curr == "icon-41"
                        {
                            pre = "icon-60"
                            curr = pre

                        }
                        else {
                            pre = "icon-41"
                            curr = pre
                            
                        }
                        

                        a = pre
                       aa = a
                     count+=1
                        new()

                        
                        
                        
                    }, label:{ Image(a)
                    })
                    
                    Spacer()

                
                    Button(action: {
                        
                        if curr == "icon-72"
                        {
                          pre = "icon-41"
                            curr = pre
                        }
                        else if curr == "icon-41"
                        {
                            pre = "icon-60"
                            curr = pre

                        }
                        else {
                            pre = "icon-41"
                            curr = pre
                        }
                        
                        b = pre
                        count+=1
                        bb = b
                        new()

                    }, label:{ Image(b)
                    })

                    
                    Spacer()
                    

                    Button(action: {
                        if curr == "icon-72"
                        {
                          pre = "icon-41"
                            curr = pre
                          
                        }
                        else if curr == "icon-41"
                        {
                            pre = "icon-60"
                            curr = pre

                        }
                        else {
                            pre = "icon-41"
                            curr = pre
                        }
                        
                    
                        c = pre
                        count+=1
                        cc = c
                        new()

                        
                    }, label:{ Image(c)
                    })

                    
                    Spacer()

                }
                Spacer()

                
            HStack{
                Spacer()

                Button(action: {
                    if curr == "icon-72"
                    {
                      pre = "icon-41"
                        curr = pre
                        
                    }
                    else if curr == "icon-41"
                    {
                        pre = "icon-60"
                        curr = pre

                    }
                    else {
                        pre = "icon-41"
                        curr = pre
                    }
                    
                   
                    d = pre
                    count+=1
                    dd = d
                    new()

                }, label:{ Image(d)
                })

                Spacer()
                
                Button(action: {
                    if curr == "icon-72"
                    {
                      pre = "icon-41"
                        curr = pre
                    }
                    else if curr == "icon-41"
                    {
                        pre = "icon-60"
                        curr = pre
                      

                    }
                    else {
                        pre = "icon-41"
                        curr = pre
                    }
                    
                    
                    e = pre
                    count+=1
                    ee = e
                    new()


                    
                }, label:{ Image(e)
                })
                
                Spacer()
                
                Button(action: {
                    if curr == "icon-72"
                    {
                      pre = "icon-41"
                        curr = pre
                      
                    }
                    else if curr == "icon-41"
                    {
                        pre = "icon-60"
                        curr = pre

                    }
                    else {
                        pre = "icon-41"
                        curr = pre

                    }
                    
                    
                    f = pre
                    count+=1
                    ff = f
                    new()

                    
                }, label:{ Image(f)
                })
                
                Spacer()

            }
                Spacer()

                HStack{
                    Spacer()
                    Button(action: {
                        if curr == "icon-72"
                        {
                          pre = "icon-41"
                            curr = pre
                           
                        }
                        else if curr == "icon-41"
                        {
                            pre = "icon-60"
                            curr = pre
                        }
                        else {
                            pre = "icon-41"
                            curr = pre
                          
                        }
                        
                        
                        g = pre
                        count+=1
                        gg = g
                        new()

                    }, label:{ Image(g)
                    })
                    
                    Spacer()
                    Button(action: {
                        if curr == "icon-72"
                        {
                          pre = "icon-41"
                            curr = pre
                        }
                        else if curr == "icon-41"
                        {
                            pre = "icon-60"
                            curr = pre

                        }
                        else {
                            pre = "icon-41"
                            curr = pre
                        }
                        
                        
                        h = pre
                        count+=1
                        hh = h
                        new()

                        
                    }, label:{ Image(h)
                    })

                    Spacer()
                    
                    Button(action: {
                        if curr == "icon-72"
                        {
                          pre = "icon-41"
                            curr = pre
                           
                        }
                        else if curr == "icon-41"
                        {
                            pre = "icon-60"
                            curr = pre

                        }
                        else {
                            pre = "icon-41"
                            curr = pre
                        }
                        
                        
                        i = pre
                        count+=1
                        ii = i
                        new()


                    }, label:{ Image(i)
                    })

                    Spacer()
                }
                Spacer()

            }
                
                    
                }
            }
        }
        



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
