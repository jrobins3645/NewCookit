//
//  UploadView.swift
//  NewCookit
//
//  Created by Riyad Abed on 5/10/23.
//

import SwiftUI

struct UploadView: View {
   @State var recipeName = ""
@State var description = ""
@State var recipeInstructions = ""
    var body: some View {
           NavigationView{
           VStack(alignment: .center, spacing: 1.0){
           Form{
           Section{
           TextField("Recipe Name",text:$recipeName)
           }
           Section{
           TextField("Description",text:$description)
           }
           .frame(height: 100.0)
           Section{
           TextField("Recipe Instructions",text:$recipeInstructions, axis:.vertical)
           }.frame(height:200)
           
           }
           Button("Choose Image Files") {
                                   
           }.frame(maxWidth:225, alignment: .center).padding()
           .background(Color("LightGreen")).cornerRadius(12)
           .padding()
           Text("Supported Formats: JPEG, PNG")
           .padding(.top, -15.0)
           Button("Submit") {
           }.frame(maxWidth:300, alignment: .center).padding()
           .background(Color("Orange")).cornerRadius(12)
           .padding()
           }.navigationTitle("Upload Recipe").navigationBarTitleDisplayMode(.inline)
           }
    }
}

struct UploadView_Previews: PreviewProvider {
    static var previews: some View {
        UploadView()
    }
}
