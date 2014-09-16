extension String {
    
    func characterAtIndex(index: Int) -> Character {
        return Array(self)[index]
    }
    
    // Allows us to use String[index] notation
    subscript( index: Int ) -> Character {
        return characterAtIndex(index)
    }
    
    // Allows us to use String[0...2] or String[0..2]
    subscript( range: Range<Int> ) -> String {
        
        var start = advance( startIndex, range.startIndex )
            var end = advance( startIndex, range.endIndex )
            
            return substringWithRange( Range(start:start, end:end) )
    }
    
    func count() -> Int {
        return countElements( self )
    }
    
}
