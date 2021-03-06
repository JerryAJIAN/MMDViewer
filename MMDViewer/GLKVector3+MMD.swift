import Foundation
import GLKit

extension GLKVector3 {
    init(glkv4: GLKVector4) {
        self = GLKVector3Make(glkv4.x, glkv4.y, glkv4.z)
    }

    func add(_ rhs: GLKVector3) -> GLKVector3 {
        return GLKVector3Add(self, rhs)
    }

    func sub(_ rhs: GLKVector3) -> GLKVector3 {
        return GLKVector3Subtract(self, rhs)
    }

    func len() -> Float {
        return GLKVector3Length(self)
    }

    func mul(_ s: Float) -> GLKVector3 {
        return GLKVector3MultiplyScalar(self, s)
    }

    func normal() -> GLKVector3 {
        return x != 0 || y != 0 || z != 0 ? GLKVector3Normalize(self) : self
    }

    func outer(_ rhs: GLKVector3) -> GLKVector3 {
        return GLKVector3CrossProduct(self, rhs)
    }

    func inner(_ rhs: GLKVector3) -> Float {
        return GLKVector3DotProduct(self, rhs)
    }

    func toGLKVector4() -> GLKVector4 {
        return GLKVector4Make(x, y, z, 1)
    }
}

extension GLKVector3 : CustomStringConvertible {
    public var description: String { return String(format: "(%f,%f,%f)", x, y, z) }

    func dot(_ other: GLKVector3) -> Float {
        return GLKVector3DotProduct(self, other)
    }

    func cross(_ other: GLKVector3) -> GLKVector3 {
        return GLKVector3CrossProduct(self, other)
    }
}
