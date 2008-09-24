
// File: index.xml

// File: classstd_1_1allocator.xml
%feature("docstring") std::allocator "

STL class. ";


// File: classgdcm_1_1Anonymizer.xml
%feature("docstring") gdcm::Anonymizer "

Anonymizer All function calls actually execute the user specified
request. Previous implementation were calling a general Anonymize
function but traversing a std::set is O(n) operation, while a simple
user specified request is O(log(n)) operation. So 'm' user interaction
is O(m*log(n)) which is < O(n) complexity.

Todo implement the Basic Application Level Confidentiality Profile

C++ includes: gdcmAnonymizer.h ";

%feature("docstring")  gdcm::Anonymizer::Anonymizer "gdcm::Anonymizer::Anonymizer() ";

%feature("docstring")
gdcm::Anonymizer::BasicApplicationLevelConfidentialityProfile "bool
gdcm::Anonymizer::BasicApplicationLevelConfidentialityProfile()

PS 3.15 E.1.1 De-Identifier An Application may claim conformance to
the Basic Application Level Confidentiality Profile as a deidentifier
if it protects all Attributes that might be used by unauthorized
entities to identify the patient. ";

%feature("docstring")  gdcm::Anonymizer::Empty "bool
gdcm::Anonymizer::Empty(Tag const &t)

Make Tag t empty (if not found tag will be created) Warning: does not
handle SQ element ";

%feature("docstring")  gdcm::Anonymizer::GetFile "File&
gdcm::Anonymizer::GetFile() ";

%feature("docstring")  gdcm::Anonymizer::Remove "bool
gdcm::Anonymizer::Remove(Tag const &t)

remove a tag (even a SQ can be removed) ";

%feature("docstring")  gdcm::Anonymizer::RemoveGroupLength "bool
gdcm::Anonymizer::RemoveGroupLength()

Main function that loop over all elements and remove group length. ";

%feature("docstring")  gdcm::Anonymizer::RemovePrivateTags "bool
gdcm::Anonymizer::RemovePrivateTags()

Main function that loop over all elements and remove private tags. ";

%feature("docstring")  gdcm::Anonymizer::Replace "bool
gdcm::Anonymizer::Replace(Tag const &t, const char *value, VL const
&vl)

when the value contains , it is a good idea to specify the length.
This function is required when dealing with VRBINARY tag ";

%feature("docstring")  gdcm::Anonymizer::Replace "bool
gdcm::Anonymizer::Replace(Tag const &t, const char *value)

Replace tag with another value, if tag is not found it will be
created: WARNING: this function can only execute if tag is a VRASCII
";

%feature("docstring")  gdcm::Anonymizer::SetFile "void
gdcm::Anonymizer::SetFile(const File &f)

Set/Get File. ";

%feature("docstring")  gdcm::Anonymizer::~Anonymizer "gdcm::Anonymizer::~Anonymizer() ";


// File: classgdcm_1_1ApplicationEntity.xml
%feature("docstring") gdcm::ApplicationEntity "

ApplicationEntity AE Application Entity

A string of characters that identifies an Application Entity with
leading and trailing spaces (20H) being non-significant. A value
consisting solely of spaces shall not be used.

Default Character Repertoire excluding character code 5CH (the
BACKSLASH \\\\ in ISO-IR 6), and control characters LF, FF, CR and
ESC.

16 bytes maximum.

C++ includes: gdcmApplicationEntity.h ";

%feature("docstring")  gdcm::ApplicationEntity::IsValid "bool
gdcm::ApplicationEntity::IsValid() const ";

%feature("docstring")  gdcm::ApplicationEntity::Print "void
gdcm::ApplicationEntity::Print(std::ostream &os) const ";

%feature("docstring")  gdcm::ApplicationEntity::SetBlob "void
gdcm::ApplicationEntity::SetBlob(const std::vector< char > &v) ";

%feature("docstring")  gdcm::ApplicationEntity::Squeeze "void
gdcm::ApplicationEntity::Squeeze() ";


// File: classgdcm_1_1Attribute.xml
%feature("docstring") gdcm::Attribute "

Attribute class This class use template metaprograming tricks to let
the user know when the template instanciation does not match the
public dictionary.

Typical example that compile is: Attribute<0x0008,0x9007> a =
{\"ORIGINAL\",\"PRIMARY\",\"T1\",\"NONE\"};

Examples that will NOT compile are:

Attribute<0x0018,0x1182, VR::IS, VM::VM1> fd1 = {}; // not enough
parameters Attribute<0x0018,0x1182, VR::IS, VM::VM2> fd2 = {0,1,2}; //
too many initializers Attribute<0x0018,0x1182, VR::IS, VM::VM3> fd3 =
{0,1,2}; // VM3 is not valid Attribute<0x0018,0x1182, VR::UL, VM::VM2>
fd3 = {0,1}; // UL is not valid VR

C++ includes: gdcmAttribute.h ";

%feature("docstring")  gdcm::Attribute::GDCM_STATIC_ASSERT "gdcm::Attribute< Group, Element, TVR, TVM
>::GDCM_STATIC_ASSERT(((((VR::VRType) TVR &VR::VR_VM1)&&((VM::VMType)
TVM==VM::VM1))||!((VR::VRType) TVR &VR::VR_VM1))) ";

%feature("docstring")  gdcm::Attribute::GDCM_STATIC_ASSERT "gdcm::Attribute< Group, Element, TVR, TVM
>::GDCM_STATIC_ASSERT(((VM::VMType) TVM &(VM::VMType)(TagToType<
Group, Element >::VMType))) ";

%feature("docstring")  gdcm::Attribute::GDCM_STATIC_ASSERT "gdcm::Attribute< Group, Element, TVR, TVM
>::GDCM_STATIC_ASSERT(((VR::VRType) TVR &(VR::VRType)(TagToType<
Group, Element >::VRType))) ";

%feature("docstring")  gdcm::Attribute::GetAsDataElement "DataElement
gdcm::Attribute< Group, Element, TVR, TVM >::GetAsDataElement() const
";

%feature("docstring")  gdcm::Attribute::GetNumberOfValues "unsigned
int gdcm::Attribute< Group, Element, TVR, TVM >::GetNumberOfValues()
const ";

%feature("docstring")  gdcm::Attribute::GetValue "ArrayType const&
gdcm::Attribute< Group, Element, TVR, TVM >::GetValue(unsigned int
idx=0) const ";

%feature("docstring")  gdcm::Attribute::GetValue "ArrayType
gdcm::Attribute< Group, Element, TVR, TVM >::GetValue(unsigned int
idx=0) ";

%feature("docstring")  gdcm::Attribute::GetValues "const ArrayType*
gdcm::Attribute< Group, Element, TVR, TVM >::GetValues() const ";

%feature("docstring")  gdcm::Attribute::Print "void gdcm::Attribute<
Group, Element, TVR, TVM >::Print(std::ostream &os) const ";

%feature("docstring")  gdcm::Attribute::SetFromDataElement "void
gdcm::Attribute< Group, Element, TVR, TVM
>::SetFromDataElement(DataElement const &de) ";

%feature("docstring")  gdcm::Attribute::SetValue "void
gdcm::Attribute< Group, Element, TVR, TVM >::SetValue(ArrayType v,
unsigned int idx=0) ";

%feature("docstring")  gdcm::Attribute::SetValues "void
gdcm::Attribute< Group, Element, TVR, TVM >::SetValues(const ArrayType
*array, unsigned int numel=VMType) ";


// File: classgdcm_1_1Attribute_3_01Group_00_01Element_00_01TVR_00_01VM_1_1VM1__n_01_4.xml
%feature("docstring") gdcm::Attribute< Group, Element, TVR, VM::VM1_n
> " C++ includes: gdcmAttribute.h ";

%feature("docstring")  gdcm::Attribute< Group, Element, TVR, VM::VM1_n
>::Attribute " gdcm::Attribute< Group, Element, TVR, VM::VM1_n
>::Attribute() ";

%feature("docstring")  gdcm::Attribute< Group, Element, TVR, VM::VM1_n
>::GDCM_STATIC_ASSERT " gdcm::Attribute< Group, Element, TVR,
VM::VM1_n >::GDCM_STATIC_ASSERT(((((VR::VRType) TVR
&VR::VR_VM1)&&((VM::VMType) TagToType< Group, Element
>::VMType==VM::VM1))||!((VR::VRType) TVR &VR::VR_VM1))) ";

%feature("docstring")  gdcm::Attribute< Group, Element, TVR, VM::VM1_n
>::GDCM_STATIC_ASSERT " gdcm::Attribute< Group, Element, TVR,
VM::VM1_n >::GDCM_STATIC_ASSERT((VM::VM1_n &(VM::VMType)(TagToType<
Group, Element >::VMType))) ";

%feature("docstring")  gdcm::Attribute< Group, Element, TVR, VM::VM1_n
>::GDCM_STATIC_ASSERT " gdcm::Attribute< Group, Element, TVR,
VM::VM1_n >::GDCM_STATIC_ASSERT(((VR::VRType) TVR
&(VR::VRType)(TagToType< Group, Element >::VRType))) ";

%feature("docstring")  gdcm::Attribute< Group, Element, TVR, VM::VM1_n
>::GetAsDataElement " DataElement gdcm::Attribute< Group, Element,
TVR, VM::VM1_n >::GetAsDataElement() const ";

%feature("docstring")  gdcm::Attribute< Group, Element, TVR, VM::VM1_n
>::GetNumberOfValues " unsigned int gdcm::Attribute< Group, Element,
TVR, VM::VM1_n >::GetNumberOfValues() const ";

%feature("docstring")  gdcm::Attribute< Group, Element, TVR, VM::VM1_n
>::GetValue " ArrayType const& gdcm::Attribute< Group, Element, TVR,
VM::VM1_n >::GetValue(unsigned int idx=0) const ";

%feature("docstring")  gdcm::Attribute< Group, Element, TVR, VM::VM1_n
>::GetValue " ArrayType gdcm::Attribute< Group, Element, TVR,
VM::VM1_n >::GetValue(unsigned int idx=0) ";

%feature("docstring")  gdcm::Attribute< Group, Element, TVR, VM::VM1_n
>::GetValues " const ArrayType* gdcm::Attribute< Group, Element, TVR,
VM::VM1_n >::GetValues() const ";

%feature("docstring")  gdcm::Attribute< Group, Element, TVR, VM::VM1_n
>::Print " void gdcm::Attribute< Group, Element, TVR, VM::VM1_n
>::Print(std::ostream &os) const ";

%feature("docstring")  gdcm::Attribute< Group, Element, TVR, VM::VM1_n
>::SetFromDataElement " void gdcm::Attribute< Group, Element, TVR,
VM::VM1_n >::SetFromDataElement(DataElement const &de) ";

%feature("docstring")  gdcm::Attribute< Group, Element, TVR, VM::VM1_n
>::SetValue " void gdcm::Attribute< Group, Element, TVR, VM::VM1_n
>::SetValue(ArrayType v) ";

%feature("docstring")  gdcm::Attribute< Group, Element, TVR, VM::VM1_n
>::SetValue " void gdcm::Attribute< Group, Element, TVR, VM::VM1_n
>::SetValue(unsigned int idx, ArrayType v) ";

%feature("docstring")  gdcm::Attribute< Group, Element, TVR, VM::VM1_n
>::SetValues " void gdcm::Attribute< Group, Element, TVR, VM::VM1_n
>::SetValues(const ArrayType *array, unsigned int numel, bool
own=false) ";

%feature("docstring")  gdcm::Attribute< Group, Element, TVR, VM::VM1_n
>::~Attribute " gdcm::Attribute< Group, Element, TVR, VM::VM1_n
>::~Attribute() ";


// File: classgdcm_1_1Attribute_3_01Group_00_01Element_00_01TVR_00_01VM_1_1VM2__2n_01_4.xml
%feature("docstring") gdcm::Attribute< Group, Element, TVR, VM::VM2_2n
> " C++ includes: gdcmAttribute.h ";


// File: classgdcm_1_1Attribute_3_01Group_00_01Element_00_01TVR_00_01VM_1_1VM2__n_01_4.xml
%feature("docstring") gdcm::Attribute< Group, Element, TVR, VM::VM2_n
> " C++ includes: gdcmAttribute.h ";

%feature("docstring")  gdcm::Attribute< Group, Element, TVR, VM::VM2_n
>::GetVM " VM gdcm::Attribute< Group, Element, TVR, VM::VM2_n
>::GetVM() const ";


// File: classgdcm_1_1Attribute_3_01Group_00_01Element_00_01TVR_00_01VM_1_1VM3__3n_01_4.xml
%feature("docstring") gdcm::Attribute< Group, Element, TVR, VM::VM3_3n
> " C++ includes: gdcmAttribute.h ";


// File: classgdcm_1_1Attribute_3_01Group_00_01Element_00_01TVR_00_01VM_1_1VM3__n_01_4.xml
%feature("docstring") gdcm::Attribute< Group, Element, TVR, VM::VM3_n
> " C++ includes: gdcmAttribute.h ";


// File: classgdcm_1_1AudioCodec.xml
%feature("docstring") gdcm::AudioCodec "

AudioCodec.

C++ includes: gdcmAudioCodec.h ";

%feature("docstring")  gdcm::AudioCodec::AudioCodec "gdcm::AudioCodec::AudioCodec() ";

%feature("docstring")  gdcm::AudioCodec::CanCode "bool
gdcm::AudioCodec::CanCode(TransferSyntax const &) const

Return whether this coder support this transfer syntax (can code it).
";

%feature("docstring")  gdcm::AudioCodec::CanDecode "bool
gdcm::AudioCodec::CanDecode(TransferSyntax const &) const

Return whether this decoder support this transfer syntax (can decode
it). ";

%feature("docstring")  gdcm::AudioCodec::Decode "bool
gdcm::AudioCodec::Decode(DataElement const &is, DataElement &os)

Decode. ";

%feature("docstring")  gdcm::AudioCodec::~AudioCodec "gdcm::AudioCodec::~AudioCodec() ";


// File: classstd_1_1auto__ptr.xml
%feature("docstring") std::auto_ptr "

STL class. ";


// File: classstd_1_1bad__alloc.xml
%feature("docstring") std::bad_alloc "

STL class. ";


// File: classstd_1_1bad__cast.xml
%feature("docstring") std::bad_cast "

STL class. ";


// File: classstd_1_1bad__exception.xml
%feature("docstring") std::bad_exception "

STL class. ";


// File: classstd_1_1bad__typeid.xml
%feature("docstring") std::bad_typeid "

STL class. ";


// File: classstd_1_1basic__fstream.xml
%feature("docstring") std::basic_fstream "

STL class. ";


// File: classstd_1_1basic__ifstream.xml
%feature("docstring") std::basic_ifstream "

STL class. ";


// File: classstd_1_1basic__ios.xml
%feature("docstring") std::basic_ios "

STL class. ";


// File: classstd_1_1basic__iostream.xml
%feature("docstring") std::basic_iostream "

STL class. ";


// File: classstd_1_1basic__istream.xml
%feature("docstring") std::basic_istream "

STL class. ";


// File: classstd_1_1basic__istringstream.xml
%feature("docstring") std::basic_istringstream "

STL class. ";


// File: classstd_1_1basic__ofstream.xml
%feature("docstring") std::basic_ofstream "

STL class. ";


// File: classstd_1_1basic__ostream.xml
%feature("docstring") std::basic_ostream "

STL class. ";


// File: classstd_1_1basic__ostringstream.xml
%feature("docstring") std::basic_ostringstream "

STL class. ";


// File: classstd_1_1basic__string.xml
%feature("docstring") std::basic_string "

STL class. ";


// File: classstd_1_1basic__string_1_1const__iterator.xml
%feature("docstring") std::basic_string::const_iterator "

STL iterator class. ";


// File: classstd_1_1basic__string_1_1const__reverse__iterator.xml
%feature("docstring") std::basic_string::const_reverse_iterator "

STL iterator class. ";


// File: classstd_1_1basic__string_1_1iterator.xml
%feature("docstring") std::basic_string::iterator "

STL iterator class. ";


// File: classstd_1_1basic__string_1_1reverse__iterator.xml
%feature("docstring") std::basic_string::reverse_iterator "

STL iterator class. ";


// File: classstd_1_1basic__stringstream.xml
%feature("docstring") std::basic_stringstream "

STL class. ";


// File: classzlib__stream_1_1basic__unzip__streambuf.xml
%feature("docstring") zlib_stream::basic_unzip_streambuf "

A stream decorator that takes compressed input and unzips it to a
istream.

The class wraps up the deflate method of the zlib library
1.1.4http://www.gzip.org/zlib/

C++ includes: zipstreamimpl.h ";

%feature("docstring")
zlib_stream::basic_unzip_streambuf::basic_unzip_streambuf "zlib_stream::basic_unzip_streambuf< charT, traits
>::basic_unzip_streambuf(istream_reference istream, int window_size,
size_t read_buffer_size, size_t input_buffer_size)

Construct a unzip stream More info on the following parameters can be
found in the zlib documentation. ";

%feature("docstring")  zlib_stream::basic_unzip_streambuf::get_crc "unsigned long zlib_stream::basic_unzip_streambuf< charT, traits
>::get_crc(void) const ";

%feature("docstring")  zlib_stream::basic_unzip_streambuf::get_in_size
"long zlib_stream::basic_unzip_streambuf< charT, traits
>::get_in_size(void) const ";

%feature("docstring")  zlib_stream::basic_unzip_streambuf::get_istream
"istream_reference zlib_stream::basic_unzip_streambuf< charT, traits
>::get_istream(void)

returns the compressed input istream ";

%feature("docstring")
zlib_stream::basic_unzip_streambuf::get_out_size "long
zlib_stream::basic_unzip_streambuf< charT, traits
>::get_out_size(void) const ";

%feature("docstring")  zlib_stream::basic_unzip_streambuf::get_zerr "int zlib_stream::basic_unzip_streambuf< charT, traits
>::get_zerr(void) const ";

%feature("docstring")
zlib_stream::basic_unzip_streambuf::get_zip_stream "z_stream&
zlib_stream::basic_unzip_streambuf< charT, traits
>::get_zip_stream(void) ";

%feature("docstring")  zlib_stream::basic_unzip_streambuf::underflow "int_type zlib_stream::basic_unzip_streambuf< charT, traits
>::underflow(void) ";

%feature("docstring")
zlib_stream::basic_unzip_streambuf::~basic_unzip_streambuf "zlib_stream::basic_unzip_streambuf< charT, traits
>::~basic_unzip_streambuf(void) ";


// File: classzlib__stream_1_1basic__zip__istream.xml
%feature("docstring") zlib_stream::basic_zip_istream "C++ includes:
zipstreamimpl.h ";

%feature("docstring")
zlib_stream::basic_zip_istream::basic_zip_istream "zlib_stream::basic_zip_istream< charT, traits
>::basic_zip_istream(istream_reference istream, int window_size=-15,
size_t read_buffer_size=zstream_default_buffer_size, size_t
input_buffer_size=zstream_default_buffer_size) ";

%feature("docstring")  zlib_stream::basic_zip_istream::check_crc "bool zlib_stream::basic_zip_istream< charT, traits >::check_crc(void)
";

%feature("docstring")  zlib_stream::basic_zip_istream::check_data_size
"bool zlib_stream::basic_zip_istream< charT, traits
>::check_data_size(void) const ";

%feature("docstring")  zlib_stream::basic_zip_istream::get_gzip_crc "long zlib_stream::basic_zip_istream< charT, traits
>::get_gzip_crc(void) const ";

%feature("docstring")
zlib_stream::basic_zip_istream::get_gzip_data_size "long
zlib_stream::basic_zip_istream< charT, traits
>::get_gzip_data_size(void) const ";

%feature("docstring")  zlib_stream::basic_zip_istream::is_gzip "bool
zlib_stream::basic_zip_istream< charT, traits >::is_gzip(void) const
";


// File: classzlib__stream_1_1basic__zip__ostream.xml
%feature("docstring") zlib_stream::basic_zip_ostream "C++ includes:
zipstreamimpl.h ";

%feature("docstring")
zlib_stream::basic_zip_ostream::basic_zip_ostream "zlib_stream::basic_zip_ostream< charT, traits
>::basic_zip_ostream(ostream_reference ostream, bool is_gzip=false,
int level=Z_DEFAULT_COMPRESSION, EStrategy strategy=DefaultStrategy,
int window_size=-15, int memory_level=8, size_t
buffer_size=zstream_default_buffer_size) ";

%feature("docstring")  zlib_stream::basic_zip_ostream::finished "void
zlib_stream::basic_zip_ostream< charT, traits >::finished(void) ";

%feature("docstring")  zlib_stream::basic_zip_ostream::is_gzip "bool
zlib_stream::basic_zip_ostream< charT, traits >::is_gzip(void) const
";

%feature("docstring")  zlib_stream::basic_zip_ostream::zflush "basic_zip_ostream<charT, traits>& zlib_stream::basic_zip_ostream<
charT, traits >::zflush(void) ";

%feature("docstring")
zlib_stream::basic_zip_ostream::~basic_zip_ostream "zlib_stream::basic_zip_ostream< charT, traits
>::~basic_zip_ostream(void) ";


// File: classzlib__stream_1_1basic__zip__streambuf.xml
%feature("docstring") zlib_stream::basic_zip_streambuf "

A stream decorator that takes raw input and zips it to a ostream.

The class wraps up the inflate method of the zlib library
1.1.4http://www.gzip.org/zlib/

C++ includes: zipstreamimpl.h ";

%feature("docstring")
zlib_stream::basic_zip_streambuf::basic_zip_streambuf "zlib_stream::basic_zip_streambuf< charT, traits
>::basic_zip_streambuf(ostream_reference ostream, int level, EStrategy
strategy, int window_size, int memory_level, size_t buffer_size) ";

%feature("docstring")  zlib_stream::basic_zip_streambuf::flush "std::streamsize zlib_stream::basic_zip_streambuf< charT, traits
>::flush(void) ";

%feature("docstring")  zlib_stream::basic_zip_streambuf::get_crc "unsigned long zlib_stream::basic_zip_streambuf< charT, traits
>::get_crc(void) const ";

%feature("docstring")  zlib_stream::basic_zip_streambuf::get_in_size "unsigned long zlib_stream::basic_zip_streambuf< charT, traits
>::get_in_size(void) const ";

%feature("docstring")  zlib_stream::basic_zip_streambuf::get_ostream "ostream_reference zlib_stream::basic_zip_streambuf< charT, traits
>::get_ostream(void) const ";

%feature("docstring")  zlib_stream::basic_zip_streambuf::get_out_size
"long zlib_stream::basic_zip_streambuf< charT, traits
>::get_out_size(void) const ";

%feature("docstring")  zlib_stream::basic_zip_streambuf::get_zerr "int zlib_stream::basic_zip_streambuf< charT, traits >::get_zerr(void)
const ";

%feature("docstring")  zlib_stream::basic_zip_streambuf::overflow "int_type zlib_stream::basic_zip_streambuf< charT, traits
>::overflow(int_type c) ";

%feature("docstring")  zlib_stream::basic_zip_streambuf::sync "int
zlib_stream::basic_zip_streambuf< charT, traits >::sync(void) ";

%feature("docstring")
zlib_stream::basic_zip_streambuf::~basic_zip_streambuf "zlib_stream::basic_zip_streambuf< charT, traits
>::~basic_zip_streambuf(void) ";


// File: classgdcm_1_1BasicOffsetTable.xml
%feature("docstring") gdcm::BasicOffsetTable "

Class to represent a BasicOffsetTable.

C++ includes: gdcmBasicOffsetTable.h ";

%feature("docstring")  gdcm::BasicOffsetTable::BasicOffsetTable "gdcm::BasicOffsetTable::BasicOffsetTable() ";

%feature("docstring")  gdcm::BasicOffsetTable::Read "std::istream&
gdcm::BasicOffsetTable::Read(std::istream &is) ";


// File: classstd_1_1bitset.xml
%feature("docstring") std::bitset "

STL class. ";


// File: classgdcm_1_1ByteBuffer.xml
%feature("docstring") gdcm::ByteBuffer "

ByteBuffer.

Detailled description here looks like a std::streambuf or std::filebuf
class with the get and peek pointer

C++ includes: gdcmByteBuffer.h ";

%feature("docstring")  gdcm::ByteBuffer::ByteBuffer "gdcm::ByteBuffer::ByteBuffer() ";

%feature("docstring")  gdcm::ByteBuffer::Get "char*
gdcm::ByteBuffer::Get(int len) ";

%feature("docstring")  gdcm::ByteBuffer::GetStart "const char*
gdcm::ByteBuffer::GetStart() const ";

%feature("docstring")  gdcm::ByteBuffer::ShitEnd "void
gdcm::ByteBuffer::ShitEnd(int len) ";

%feature("docstring")  gdcm::ByteBuffer::UpdatePosition "void
gdcm::ByteBuffer::UpdatePosition() ";


// File: classgdcm_1_1ByteSwap.xml
%feature("docstring") gdcm::ByteSwap "

ByteSwap.

Perform machine dependent byte swaping (Little Endian, Big Endian, Bad
Little Endian, Bad Big Endian). TODO: bswap_32 / bswap_64 ...

C++ includes: gdcmByteSwap.h ";


// File: classgdcm_1_1ByteSwapFilter.xml
%feature("docstring") gdcm::ByteSwapFilter "

ByteSwapFilter In place byte-swapping of a dataset FIXME: FL status ??

C++ includes: gdcmByteSwapFilter.h ";

%feature("docstring")  gdcm::ByteSwapFilter::ByteSwap "bool
gdcm::ByteSwapFilter::ByteSwap() ";

%feature("docstring")  gdcm::ByteSwapFilter::ByteSwapFilter "gdcm::ByteSwapFilter::ByteSwapFilter(DataSet &ds) ";

%feature("docstring")  gdcm::ByteSwapFilter::SetByteSwapTag "void
gdcm::ByteSwapFilter::SetByteSwapTag(bool b) ";

%feature("docstring")  gdcm::ByteSwapFilter::~ByteSwapFilter "gdcm::ByteSwapFilter::~ByteSwapFilter() ";


// File: classgdcm_1_1ByteValue.xml
%feature("docstring") gdcm::ByteValue "

Class to represent binary value (array of bytes).

C++ includes: gdcmByteValue.h ";

%feature("docstring")  gdcm::ByteValue::ByteValue "gdcm::ByteValue::ByteValue(std::ostringstream const &os) ";

%feature("docstring")  gdcm::ByteValue::ByteValue "gdcm::ByteValue::ByteValue(std::vector< char > &v) ";

%feature("docstring")  gdcm::ByteValue::ByteValue "gdcm::ByteValue::ByteValue(const char *array=0, VL const &vl=0) ";

%feature("docstring")  gdcm::ByteValue::Clear "void
gdcm::ByteValue::Clear() ";

%feature("docstring")  gdcm::ByteValue::GetBuffer "bool
gdcm::ByteValue::GetBuffer(char *buffer, unsigned long length) const
";

%feature("docstring")  gdcm::ByteValue::GetLength "VL
gdcm::ByteValue::GetLength() const ";

%feature("docstring")  gdcm::ByteValue::GetPointer "const char*
gdcm::ByteValue::GetPointer() const ";

%feature("docstring")  gdcm::ByteValue::IsEmpty "bool
gdcm::ByteValue::IsEmpty() const ";

%feature("docstring")  gdcm::ByteValue::IsPrintable "bool
gdcm::ByteValue::IsPrintable(VL length) const

Checks whether a 'ByteValue' is printable or not (in order to avoid
corrupting the terminal of invocation when printing) I dont think this
function is working since it does not handle UNICODE or character
set... ";

%feature("docstring")  gdcm::ByteValue::PrintASCII "void
gdcm::ByteValue::PrintASCII(std::ostream &os, VL maxlength) const ";

%feature("docstring")  gdcm::ByteValue::PrintGroupLength "void
gdcm::ByteValue::PrintGroupLength(std::ostream &os) ";

%feature("docstring")  gdcm::ByteValue::PrintHex "void
gdcm::ByteValue::PrintHex(std::ostream &os, VL maxlength) const ";

%feature("docstring")  gdcm::ByteValue::Read "std::istream&
gdcm::ByteValue::Read(std::istream &is) ";

%feature("docstring")  gdcm::ByteValue::Read "std::istream&
gdcm::ByteValue::Read(std::istream &is) ";

%feature("docstring")  gdcm::ByteValue::SetLength "void
gdcm::ByteValue::SetLength(VL vl) ";

%feature("docstring")  gdcm::ByteValue::Write "std::ostream const&
gdcm::ByteValue::Write(std::ostream &os) const ";

%feature("docstring")  gdcm::ByteValue::Write "std::ostream const&
gdcm::ByteValue::Write(std::ostream &os) const ";

%feature("docstring")  gdcm::ByteValue::WriteBuffer "bool
gdcm::ByteValue::WriteBuffer(std::ostream &os) const ";

%feature("docstring")  gdcm::ByteValue::~ByteValue "gdcm::ByteValue::~ByteValue() ";


// File: classgdcm_1_1Codec.xml
%feature("docstring") gdcm::Codec "

Codec class.

C++ includes: gdcmCodec.h ";


// File: classgdcm_1_1Coder.xml
%feature("docstring") gdcm::Coder "

Coder.

C++ includes: gdcmCoder.h ";

%feature("docstring")  gdcm::Coder::CanCode "virtual bool
gdcm::Coder::CanCode(TransferSyntax const &) const=0

Return whether this coder support this transfer syntax (can code it).
";

%feature("docstring")  gdcm::Coder::Code "virtual bool
gdcm::Coder::Code(DataElement const &in, DataElement &out)

Code. ";

%feature("docstring")  gdcm::Coder::~Coder "virtual
gdcm::Coder::~Coder() ";


// File: classstd_1_1complex.xml
%feature("docstring") std::complex "

STL class. ";


// File: classgdcm_1_1ConstCharWrapper.xml
%feature("docstring") gdcm::ConstCharWrapper "C++ includes:
gdcmConstCharWrapper.h ";

%feature("docstring")  gdcm::ConstCharWrapper::ConstCharWrapper "gdcm::ConstCharWrapper::ConstCharWrapper(const char *i=0) ";


// File: classgdcm_1_1CP246ExplicitDataElement.xml
%feature("docstring") gdcm::CP246ExplicitDataElement "

Class to read/write a DataElement as CP246Explicit Data Element.

Some system are producing SQ, declare them as UN, but encode the SQ as
'Explicit' instead of Implicit

C++ includes: gdcmCP246ExplicitDataElement.h ";

%feature("docstring")  gdcm::CP246ExplicitDataElement::GetLength "VL
gdcm::CP246ExplicitDataElement::GetLength() const ";

%feature("docstring")  gdcm::CP246ExplicitDataElement::Read "std::istream& gdcm::CP246ExplicitDataElement::Read(std::istream &is)
";

%feature("docstring")  gdcm::CP246ExplicitDataElement::ReadWithLength
"std::istream&
gdcm::CP246ExplicitDataElement::ReadWithLength(std::istream &is, VL
&length) ";


// File: classgdcm_1_1CSAElement.xml
%feature("docstring") gdcm::CSAElement "

Class to represent a CSA Element.

C++ includes: gdcmCSAElement.h ";

%feature("docstring")  gdcm::CSAElement::CSAElement "gdcm::CSAElement::CSAElement(const CSAElement &_val) ";

%feature("docstring")  gdcm::CSAElement::CSAElement "gdcm::CSAElement::CSAElement(unsigned int kf=0) ";

%feature("docstring")  gdcm::CSAElement::GetByteValue "const
ByteValue* gdcm::CSAElement::GetByteValue() const ";

%feature("docstring")  gdcm::CSAElement::GetKey "unsigned int
gdcm::CSAElement::GetKey() const

Set/Get Key. ";

%feature("docstring")  gdcm::CSAElement::GetName "const char*
gdcm::CSAElement::GetName() const

Set/Get Name. ";

%feature("docstring")  gdcm::CSAElement::GetNoOfItems "unsigned int
gdcm::CSAElement::GetNoOfItems() const

Set/Get NoOfItems. ";

%feature("docstring")  gdcm::CSAElement::GetSyngoDT "unsigned int
gdcm::CSAElement::GetSyngoDT() const

Set/Get SyngoDT. ";

%feature("docstring")  gdcm::CSAElement::GetValue "Value&
gdcm::CSAElement::GetValue() ";

%feature("docstring")  gdcm::CSAElement::GetValue "Value const&
gdcm::CSAElement::GetValue() const

Set/Get Value (bytes array, SQ of items, SQ of fragments):. ";

%feature("docstring")  gdcm::CSAElement::GetVM "const VM&
gdcm::CSAElement::GetVM() const

Set/Get VM. ";

%feature("docstring")  gdcm::CSAElement::GetVR "VR const&
gdcm::CSAElement::GetVR() const

Set/Get VR. ";

%feature("docstring")  gdcm::CSAElement::IsEmpty "bool
gdcm::CSAElement::IsEmpty() const ";

%feature("docstring")  gdcm::CSAElement::SetByteValue "void
gdcm::CSAElement::SetByteValue(const char *array, VL length) ";

%feature("docstring")  gdcm::CSAElement::SetKey "void
gdcm::CSAElement::SetKey(unsigned int key) ";

%feature("docstring")  gdcm::CSAElement::SetName "void
gdcm::CSAElement::SetName(const char *name) ";

%feature("docstring")  gdcm::CSAElement::SetNoOfItems "void
gdcm::CSAElement::SetNoOfItems(unsigned int items) ";

%feature("docstring")  gdcm::CSAElement::SetSyngoDT "void
gdcm::CSAElement::SetSyngoDT(unsigned int syngodt) ";

%feature("docstring")  gdcm::CSAElement::SetValue "void
gdcm::CSAElement::SetValue(Value const &vl) ";

%feature("docstring")  gdcm::CSAElement::SetVM "void
gdcm::CSAElement::SetVM(const VM &vm) ";

%feature("docstring")  gdcm::CSAElement::SetVR "void
gdcm::CSAElement::SetVR(VR const &vr) ";


// File: classgdcm_1_1CSAHeader.xml
%feature("docstring") gdcm::CSAHeader "

Class for CSAHeader.

SIEMENS store private information in tag (0x0029,0x10,\"SIEMENS CSA
HEADER\") this class is meant for user wishing to access values stored
within this private attribute. There are basically two main 'format'
for this attribute : SV10/NOMAGIC and DATASET_FORMAT SV10 and NOMAGIC
are from a user prospective identical, see CSAHeader.xml for possible
name / value stored in this format. DATASET_FORMAT is in fact simply
just another DICOM dataset (implicit) with -currently unknown- value.
This can be only be printer for now.

WARNING:  : Everything you do with this code is at your own risk,
since decoding process was not written from specification documents.

: the API of this class might change.  : MrEvaProtocol in 29,1020
contains ^M that would be nice to get rid of on UNIX system...

See:  also 5.1.3.2.4.1 MEDCOM History Information and 5.1.4.3 CSA Non-
Image Module
inhttp://tamsinfo.toshiba.com/docrequest/pdf/E.Soft_v2.0.pdf

C++ includes: gdcmCSAHeader.h ";

%feature("docstring")  gdcm::CSAHeader::CSAHeader "gdcm::CSAHeader::CSAHeader() ";

%feature("docstring")  gdcm::CSAHeader::FindCSAElementByName "bool
gdcm::CSAHeader::FindCSAElementByName(const char *name)

Return true if the CSA element matching 'name' is found or not. ";

%feature("docstring")  gdcm::CSAHeader::GetCSAElementByName "const
CSAElement& gdcm::CSAHeader::GetCSAElementByName(const char *name)

Return the CSAElement corresponding to name 'name' WARNING:  Case
Sensitive ";

%feature("docstring")  gdcm::CSAHeader::GetDataSet "const DataSet&
gdcm::CSAHeader::GetDataSet() const

Return the DataSet output (use only if Format == DATASET_FORMAT ). ";

%feature("docstring")  gdcm::CSAHeader::GetFormat "CSAHeaderType
gdcm::CSAHeader::GetFormat() const

return the format of the CSAHeader ";

%feature("docstring")  gdcm::CSAHeader::LoadFromDataElement "bool
gdcm::CSAHeader::LoadFromDataElement(DataElement const &de)

Decode the CSAHeader from element 'de'. ";

%feature("docstring")  gdcm::CSAHeader::Print "void
gdcm::CSAHeader::Print(std::ostream &os) const

Print the CSAHeader (use only if Format == SV10 or NOMAGIC). ";

%feature("docstring")  gdcm::CSAHeader::Read "std::istream&
gdcm::CSAHeader::Read(std::istream &is) ";

%feature("docstring")  gdcm::CSAHeader::Write "const std::ostream&
gdcm::CSAHeader::Write(std::ostream &os) const ";

%feature("docstring")  gdcm::CSAHeader::~CSAHeader "gdcm::CSAHeader::~CSAHeader() ";


// File: classgdcm_1_1CSAHeaderDict.xml
%feature("docstring") gdcm::CSAHeaderDict "

Class to represent a map of CSAHeaderDictEntry.

C++ includes: gdcmCSAHeaderDict.h ";

%feature("docstring")  gdcm::CSAHeaderDict::AddCSAHeaderDictEntry "void gdcm::CSAHeaderDict::AddCSAHeaderDictEntry(const
CSAHeaderDictEntry &de) ";

%feature("docstring")  gdcm::CSAHeaderDict::Begin "ConstIterator
gdcm::CSAHeaderDict::Begin() const ";

%feature("docstring")  gdcm::CSAHeaderDict::CSAHeaderDict "gdcm::CSAHeaderDict::CSAHeaderDict() ";

%feature("docstring")  gdcm::CSAHeaderDict::End "ConstIterator
gdcm::CSAHeaderDict::End() const ";

%feature("docstring")  gdcm::CSAHeaderDict::GetCSAHeaderDictEntry "const CSAHeaderDictEntry&
gdcm::CSAHeaderDict::GetCSAHeaderDictEntry(const char *name) const ";

%feature("docstring")  gdcm::CSAHeaderDict::IsEmpty "bool
gdcm::CSAHeaderDict::IsEmpty() const ";


// File: classgdcm_1_1CSAHeaderDictEntry.xml
%feature("docstring") gdcm::CSAHeaderDictEntry "

Class to represent an Entry in the Dict Does not really exist within
the DICOM definition, just a way to minimize storage and have a
mapping from gdcm::Tag to the needed information.

bla TODO FIXME: Need a PublicCSAHeaderDictEntry...indeed
CSAHeaderDictEntry has a notion of retired which does not exist in
PrivateCSAHeaderDictEntry...

See:   gdcm::Dict

C++ includes: gdcmCSAHeaderDictEntry.h ";

%feature("docstring")  gdcm::CSAHeaderDictEntry::CSAHeaderDictEntry "gdcm::CSAHeaderDictEntry::CSAHeaderDictEntry(const char *name=\"\", VR
const &vr=VR::INVALID, VM const &vm=VM::VM0, const char *desc=\"\") ";

%feature("docstring")  gdcm::CSAHeaderDictEntry::GetDescription "const char* gdcm::CSAHeaderDictEntry::GetDescription() const

Set/Get Description. ";

%feature("docstring")  gdcm::CSAHeaderDictEntry::GetName "const char*
gdcm::CSAHeaderDictEntry::GetName() const

Set/Get Name. ";

%feature("docstring")  gdcm::CSAHeaderDictEntry::GetVM "const VM&
gdcm::CSAHeaderDictEntry::GetVM() const

Set/Get VM. ";

%feature("docstring")  gdcm::CSAHeaderDictEntry::GetVR "const VR&
gdcm::CSAHeaderDictEntry::GetVR() const

Set/Get VR. ";

%feature("docstring")  gdcm::CSAHeaderDictEntry::SetDescription "void
gdcm::CSAHeaderDictEntry::SetDescription(const char *desc) ";

%feature("docstring")  gdcm::CSAHeaderDictEntry::SetName "void
gdcm::CSAHeaderDictEntry::SetName(const char *name) ";

%feature("docstring")  gdcm::CSAHeaderDictEntry::SetVM "void
gdcm::CSAHeaderDictEntry::SetVM(VM const &vm) ";

%feature("docstring")  gdcm::CSAHeaderDictEntry::SetVR "void
gdcm::CSAHeaderDictEntry::SetVR(const VR &vr) ";


// File: classgdcm_1_1CSAHeaderDictException.xml
%feature("docstring") gdcm::CSAHeaderDictException "C++ includes:
gdcmCSAHeaderDict.h ";


// File: classgdcm_1_1Curve.xml
%feature("docstring") gdcm::Curve "

Curve class to handle element 50xx,3000 Curve Data WARNING: This is
deprecated and lastly defined in PS 3.3 - 2004.

Examples: GE_DLX-8-MONO2-Multiframe-Jpeg_Lossless.dcm

GE_DLX-8-MONO2-Multiframe.dcm

gdcmSampleData/Philips_Medical_Images/integris_HV_5000/xa_integris.dcm

TOSHIBA-CurveData[1-3].dcm

C++ includes: gdcmCurve.h ";

%feature("docstring")  gdcm::Curve::Curve "gdcm::Curve::Curve(Curve
const &ov) ";

%feature("docstring")  gdcm::Curve::Curve "gdcm::Curve::Curve() ";

%feature("docstring")  gdcm::Curve::Decode "void
gdcm::Curve::Decode(std::istream &is, std::ostream &os) ";

%feature("docstring")  gdcm::Curve::GetAsPoints "void
gdcm::Curve::GetAsPoints(float *array) const ";

%feature("docstring")  gdcm::Curve::GetDataValueRepresentation "unsigned short gdcm::Curve::GetDataValueRepresentation() const ";

%feature("docstring")  gdcm::Curve::GetDimensions "unsigned short
gdcm::Curve::GetDimensions() const ";

%feature("docstring")  gdcm::Curve::GetGroup "unsigned short
gdcm::Curve::GetGroup() const ";

%feature("docstring")  gdcm::Curve::GetNumberOfPoints "unsigned short
gdcm::Curve::GetNumberOfPoints() const ";

%feature("docstring")  gdcm::Curve::GetTypeOfData "const char*
gdcm::Curve::GetTypeOfData() const ";

%feature("docstring")  gdcm::Curve::GetTypeOfDataDescription "const
char* gdcm::Curve::GetTypeOfDataDescription() const ";

%feature("docstring")  gdcm::Curve::IsEmpty "bool
gdcm::Curve::IsEmpty() const ";

%feature("docstring")  gdcm::Curve::Print "void
gdcm::Curve::Print(std::ostream &) const ";

%feature("docstring")  gdcm::Curve::SetCurve "void
gdcm::Curve::SetCurve(const char *array, unsigned int length) ";

%feature("docstring")  gdcm::Curve::SetCurveDescription "void
gdcm::Curve::SetCurveDescription(const char *curvedescription) ";

%feature("docstring")  gdcm::Curve::SetDataValueRepresentation "void
gdcm::Curve::SetDataValueRepresentation(unsigned short
datavaluerepresentation) ";

%feature("docstring")  gdcm::Curve::SetDimensions "void
gdcm::Curve::SetDimensions(unsigned short dimensions) ";

%feature("docstring")  gdcm::Curve::SetGroup "void
gdcm::Curve::SetGroup(unsigned short group) ";

%feature("docstring")  gdcm::Curve::SetNumberOfPoints "void
gdcm::Curve::SetNumberOfPoints(unsigned short numberofpoints) ";

%feature("docstring")  gdcm::Curve::SetTypeOfData "void
gdcm::Curve::SetTypeOfData(const char *typeofdata) ";

%feature("docstring")  gdcm::Curve::Update "void
gdcm::Curve::Update(const DataElement &de) ";

%feature("docstring")  gdcm::Curve::~Curve "gdcm::Curve::~Curve() ";


// File: classgdcm_1_1DataElement.xml
%feature("docstring") gdcm::DataElement "

Class to represent a Data Element either Implicit or Explicit.

DATA ELEMENT: A unit of information as defined by a single entry in
the data dictionary. An encoded Information Object Definition ( IOD)
Attribute that is composed of, at a minimum, three fields: a Data
Element Tag, a Value Length, and a Value Field. For some specific
Transfer Syntaxes, a Data Element also contains a VR Field where the
Value Representation of that Data Element is specified explicitly.

C++ includes: gdcmDataElement.h ";

%feature("docstring")  gdcm::DataElement::DataElement "gdcm::DataElement::DataElement(const DataElement &_val) ";

%feature("docstring")  gdcm::DataElement::DataElement "gdcm::DataElement::DataElement(const Tag &t=Tag(0), const VL &vl=0,
const VR &vr=VR::INVALID) ";

%feature("docstring")  gdcm::DataElement::GetByteValue "const
ByteValue* gdcm::DataElement::GetByteValue() const

Return the Value of DataElement as a ByteValue (if possible) WARNING:
: You need to check for NULL return value ";

%feature("docstring")  gdcm::DataElement::GetLength "VL
gdcm::DataElement::GetLength() const ";

%feature("docstring")  gdcm::DataElement::GetSequenceOfFragments "const SequenceOfFragments* gdcm::DataElement::GetSequenceOfFragments()
const

Return the Value of DataElement as a Sequence Of Fragments (if
possible) WARNING:  : You need to check for NULL return value ";

%feature("docstring")  gdcm::DataElement::GetSequenceOfItems "const
SequenceOfItems* gdcm::DataElement::GetSequenceOfItems() const

Return the Value of DataElement as a Sequence Of Items (if possible)
WARNING:  : You need to check for NULL return value ";

%feature("docstring")  gdcm::DataElement::GetTag "Tag&
gdcm::DataElement::GetTag() ";

%feature("docstring")  gdcm::DataElement::GetTag "const Tag&
gdcm::DataElement::GetTag() const

Get Tag. ";

%feature("docstring")  gdcm::DataElement::GetValue "Value&
gdcm::DataElement::GetValue() ";

%feature("docstring")  gdcm::DataElement::GetValue "Value const&
gdcm::DataElement::GetValue() const

Set/Get Value (bytes array, SQ of items, SQ of fragments):. ";

%feature("docstring")  gdcm::DataElement::GetVL "const VL&
gdcm::DataElement::GetVL() const

Get VL. ";

%feature("docstring")  gdcm::DataElement::GetVR "VR const&
gdcm::DataElement::GetVR() const

Get VR do not set VR::SQ on bytevalue data element ";

%feature("docstring")  gdcm::DataElement::IsEmpty "bool
gdcm::DataElement::IsEmpty() const

Check if Data Element is empty. ";

%feature("docstring")  gdcm::DataElement::IsUndefinedLength "bool
gdcm::DataElement::IsUndefinedLength() const

return if Value Length if of undefined length ";

%feature("docstring")  gdcm::DataElement::Read "std::istream&
gdcm::DataElement::Read(std::istream &is) ";

%feature("docstring")  gdcm::DataElement::ReadOrSkip "std::istream&
gdcm::DataElement::ReadOrSkip(std::istream &is, std::set< Tag > const
&skiptags) ";

%feature("docstring")  gdcm::DataElement::ReadWithLength "std::istream& gdcm::DataElement::ReadWithLength(std::istream &is, VL
&length) ";

%feature("docstring")  gdcm::DataElement::SetByteValue "void
gdcm::DataElement::SetByteValue(const char *array, VL length)

Set the byte value. ";

%feature("docstring")  gdcm::DataElement::SetTag "void
gdcm::DataElement::SetTag(const Tag &t)

Set Tag Use with cautious (need to match Part 6) ";

%feature("docstring")  gdcm::DataElement::SetValue "void
gdcm::DataElement::SetValue(Value const &vl)

WARNING:  you need to set the ValueLengthField explicitely ";

%feature("docstring")  gdcm::DataElement::SetVL "void
gdcm::DataElement::SetVL(const VL &vl)

Set VL Use with cautious (need to match Part 6), advanced user only
See:   SetByteValue ";

%feature("docstring")  gdcm::DataElement::SetVLToUndefined "void
gdcm::DataElement::SetVLToUndefined() ";

%feature("docstring")  gdcm::DataElement::SetVR "void
gdcm::DataElement::SetVR(VR const &vr)

Set VR Use with cautious (need to match Part 6), advanced user only vr
is a VR::VRALL (not a dual one such as OB_OW) ";

%feature("docstring")  gdcm::DataElement::Write "const std::ostream&
gdcm::DataElement::Write(std::ostream &os) const ";


// File: classgdcm_1_1DataElementException.xml
%feature("docstring") gdcm::DataElementException "C++ includes:
gdcmDataSet.h ";


// File: classgdcm_1_1DataSet.xml
%feature("docstring") gdcm::DataSet "

Class to represent a Data Set (which contains Data Elements) A Data
Set represents an instance of a real world Information Object.

DATA SET: Exchanged information consisting of a structured set of
Attribute values directly or indirectly related to Information
Objects. The value of each Attribute in a Data Set is expressed as a
Data Element. A collection of Data Elements ordered by increasing Data
Element Tag number that is an encoding of the values of Attributes of
a real world object.

Implementation note. If one do: DataSet ds; ds.SetLength(0);
ds.Read(is); setting length to 0 actually means try to read is as if
it was a root DataSet. Other value are undefined (nested dataset with
undefined length) or defined length (different from 0) means nested
dataset with defined length.  TODO: a DataSet DOES NOT have a TS
type... a file does !

C++ includes: gdcmDataSet.h ";

%feature("docstring")  gdcm::DataSet::Begin "Iterator
gdcm::DataSet::Begin() ";

%feature("docstring")  gdcm::DataSet::Begin "ConstIterator
gdcm::DataSet::Begin() const ";

%feature("docstring")  gdcm::DataSet::Clear "void
gdcm::DataSet::Clear() ";

%feature("docstring")  gdcm::DataSet::ComputeGroupLength "unsigned
int gdcm::DataSet::ComputeGroupLength(Tag const &tag) const ";

%feature("docstring")  gdcm::DataSet::End "Iterator
gdcm::DataSet::End() ";

%feature("docstring")  gdcm::DataSet::End "ConstIterator
gdcm::DataSet::End() const ";

%feature("docstring")  gdcm::DataSet::FindDataElement "bool
gdcm::DataSet::FindDataElement(const Tag &t) const ";

%feature("docstring")  gdcm::DataSet::FindDataElement "bool
gdcm::DataSet::FindDataElement(const PrivateTag &t) const

A DataElement in GDCM always store VL ( Value Length) on a 32 bits
integer even when VL is 16 bits

A DataElement always store the VR even for Implicit TS, in which case
VR is defaulted to VR::INVALID

For Item start/end (See 0xfffe tags), Value is NULL

See:   ExplicitDataElement ImplicitDataElement Look up if private tag
't' is present in the dataset:. ";

%feature("docstring")  gdcm::DataSet::FindNextDataElement "const
DataElement& gdcm::DataSet::FindNextDataElement(const Tag &t) const ";

%feature("docstring")  gdcm::DataSet::GetDataElement "const
DataElement& gdcm::DataSet::GetDataElement(const PrivateTag &t) const

Return the dataelement. ";

%feature("docstring")  gdcm::DataSet::GetDataElement "const
DataElement& gdcm::DataSet::GetDataElement(const Tag &t) const

Return the DataElement with Tag 't' WARNING:  : This only search at
the 'root level' of the DataSet ";

%feature("docstring")  gdcm::DataSet::GetDES "DataElementSet&
gdcm::DataSet::GetDES() ";

%feature("docstring")  gdcm::DataSet::GetDES "const DataElementSet&
gdcm::DataSet::GetDES() const ";

%feature("docstring")  gdcm::DataSet::GetLength "VL
gdcm::DataSet::GetLength() const ";

%feature("docstring")  gdcm::DataSet::GetPrivateCreator "std::string
gdcm::DataSet::GetPrivateCreator(const Tag &t) const

Return the private creator of the private tag 't':. ";

%feature("docstring")  gdcm::DataSet::Insert "void
gdcm::DataSet::Insert(const DataElement &de)

Insert a DataElement in the DataSet. WARNING:  : Tag need to be >= 0x8
to be considered valid data element ";

%feature("docstring")  gdcm::DataSet::IsEmpty "bool
gdcm::DataSet::IsEmpty() const

Returns if the dataset is empty. ";

%feature("docstring")  gdcm::DataSet::Print "void
gdcm::DataSet::Print(std::ostream &os, std::string const &indent=\"\")
const ";

%feature("docstring")  gdcm::DataSet::Read "std::istream&
gdcm::DataSet::Read(std::istream &is) ";

%feature("docstring")  gdcm::DataSet::ReadNested "std::istream&
gdcm::DataSet::ReadNested(std::istream &is) ";

%feature("docstring")  gdcm::DataSet::ReadUpToTag "std::istream&
gdcm::DataSet::ReadUpToTag(std::istream &is, const Tag &t, std::set<
Tag > const &skiptags) ";

%feature("docstring")  gdcm::DataSet::ReadUpToTagWithLength "std::istream& gdcm::DataSet::ReadUpToTagWithLength(std::istream &is,
const Tag &t, VL &length) ";

%feature("docstring")  gdcm::DataSet::ReadWithLength "std::istream&
gdcm::DataSet::ReadWithLength(std::istream &is, VL &length) ";

%feature("docstring")  gdcm::DataSet::Remove "SizeType
gdcm::DataSet::Remove(const Tag &tag)

Completely remove a dataelement from the dataset. ";

%feature("docstring")  gdcm::DataSet::Replace "void
gdcm::DataSet::Replace(const DataElement &de)

Replace a dataelement with another one. ";

%feature("docstring")  gdcm::DataSet::Size "unsigned int
gdcm::DataSet::Size() const ";

%feature("docstring")  gdcm::DataSet::Write "std::ostream const&
gdcm::DataSet::Write(std::ostream &os) const ";


// File: classgdcm_1_1DataSetHelper.xml
%feature("docstring") gdcm::DataSetHelper "

DataSetHelper (internal class, not intended for user level).

C++ includes: gdcmDataSetHelper.h ";


// File: classgdcm_1_1Decoder.xml
%feature("docstring") gdcm::Decoder "

Decoder.

C++ includes: gdcmDecoder.h ";

%feature("docstring")  gdcm::Decoder::CanDecode "virtual bool
gdcm::Decoder::CanDecode(TransferSyntax const &) const=0

Return whether this decoder support this transfer syntax (can decode
it). ";

%feature("docstring")  gdcm::Decoder::Decode "virtual bool
gdcm::Decoder::Decode(DataElement const &is, DataElement &os)

Decode. ";

%feature("docstring")  gdcm::Decoder::~Decoder "virtual
gdcm::Decoder::~Decoder() ";


// File: classgdcm_1_1DefinedTerms.xml
%feature("docstring") gdcm::DefinedTerms "

Defined Terms are used when the specified explicit Values may be
extended by implementors to include additional new Values. These new
Values shall be specified in the Conformance Statement (see PS 3.2)
and shall not have the same meaning as currently defined Values in
this standard. A Data Element with Defined Terms that does not contain
a Value equivalent to one of the Values currently specified in this
standard shall not be considered to have an invalid value. Note:
Interpretation Type ID (4008,0210) is an example of a Data Element
having Defined Terms. It is defined to have a Value that may be one of
the set of standard Values; REPORT or AMENDMENT (see PS 3.3). Because
this Data Element has Defined Terms other Interpretation Type IDs may
be defined by the implementor.

C++ includes: gdcmDefinedTerms.h ";

%feature("docstring")  gdcm::DefinedTerms::DefinedTerms "gdcm::DefinedTerms::DefinedTerms() ";


// File: classgdcm_1_1Defs.xml
%feature("docstring") gdcm::Defs "

FIXME I do not like the name 'Defs'.

bla

C++ includes: gdcmDefs.h ";

%feature("docstring")  gdcm::Defs::Defs "gdcm::Defs::Defs() ";

%feature("docstring")  gdcm::Defs::GetIODs "IODs&
gdcm::Defs::GetIODs() ";

%feature("docstring")  gdcm::Defs::GetIODs "const IODs&
gdcm::Defs::GetIODs() const ";

%feature("docstring")  gdcm::Defs::GetMacros "Macros&
gdcm::Defs::GetMacros() ";

%feature("docstring")  gdcm::Defs::GetMacros "const Macros&
gdcm::Defs::GetMacros() const ";

%feature("docstring")  gdcm::Defs::GetModules "Modules&
gdcm::Defs::GetModules() ";

%feature("docstring")  gdcm::Defs::GetModules "const Modules&
gdcm::Defs::GetModules() const ";

%feature("docstring")  gdcm::Defs::IsEmpty "bool
gdcm::Defs::IsEmpty() const ";

%feature("docstring")  gdcm::Defs::Verify "bool
gdcm::Defs::Verify(const DataSet &ds) const ";

%feature("docstring")  gdcm::Defs::~Defs "gdcm::Defs::~Defs() ";


// File: classgdcm_1_1DeltaEncodingCodec.xml
%feature("docstring") gdcm::DeltaEncodingCodec "

DeltaEncodingCodec compression used by some private vendor.

C++ includes: gdcmDeltaEncodingCodec.h ";

%feature("docstring")  gdcm::DeltaEncodingCodec::CanDecode "bool
gdcm::DeltaEncodingCodec::CanDecode(TransferSyntax const &ts) ";

%feature("docstring")  gdcm::DeltaEncodingCodec::Decode "bool
gdcm::DeltaEncodingCodec::Decode(DataElement const &is, DataElement
&os)

Decode. ";

%feature("docstring")  gdcm::DeltaEncodingCodec::DeltaEncodingCodec "gdcm::DeltaEncodingCodec::DeltaEncodingCodec() ";

%feature("docstring")  gdcm::DeltaEncodingCodec::~DeltaEncodingCodec "gdcm::DeltaEncodingCodec::~DeltaEncodingCodec() ";


// File: classstd_1_1deque.xml
%feature("docstring") std::deque "

STL class. ";


// File: classstd_1_1deque_1_1const__iterator.xml
%feature("docstring") std::deque::const_iterator "

STL iterator class. ";


// File: classstd_1_1deque_1_1const__reverse__iterator.xml
%feature("docstring") std::deque::const_reverse_iterator "

STL iterator class. ";


// File: classstd_1_1deque_1_1iterator.xml
%feature("docstring") std::deque::iterator "

STL iterator class. ";


// File: classstd_1_1deque_1_1reverse__iterator.xml
%feature("docstring") std::deque::reverse_iterator "

STL iterator class. ";


// File: classgdcm_1_1DICOMDIR.xml
%feature("docstring") gdcm::DICOMDIR "

DICOMDIR.

C++ includes: gdcmDICOMDIR.h ";

%feature("docstring")  gdcm::DICOMDIR::DICOMDIR "gdcm::DICOMDIR::DICOMDIR(const FileSet &fs) ";

%feature("docstring")  gdcm::DICOMDIR::DICOMDIR "gdcm::DICOMDIR::DICOMDIR() ";


// File: classgdcm_1_1Dict.xml
%feature("docstring") gdcm::Dict "

Class to represent a map of DictEntry.

bla TODO FIXME: For Element == 0x0 need to return Name = Group Length
ValueRepresentation = UL ValueMultiplicity = 1

C++ includes: gdcmDict.h ";

%feature("docstring")  gdcm::Dict::AddDictEntry "void
gdcm::Dict::AddDictEntry(const Tag &tag, const DictEntry &de) ";

%feature("docstring")  gdcm::Dict::Begin "ConstIterator
gdcm::Dict::Begin() const ";

%feature("docstring")  gdcm::Dict::Dict "gdcm::Dict::Dict() ";

%feature("docstring")  gdcm::Dict::End "ConstIterator
gdcm::Dict::End() const ";

%feature("docstring")  gdcm::Dict::GetDictEntry "const DictEntry&
gdcm::Dict::GetDictEntry(const Tag &tag) const ";

%feature("docstring")  gdcm::Dict::GetDictEntryByName "const
DictEntry& gdcm::Dict::GetDictEntryByName(const char *name, Tag &tag)
const

Inefficient way of looking up tag by name. Technically DICOM does not
garantee uniqueness (and Curve / Overlay are there to prove it). But
most of the time name is in fact uniq and can be uniquely link to a
tag ";

%feature("docstring")  gdcm::Dict::IsEmpty "bool
gdcm::Dict::IsEmpty() const ";


// File: classgdcm_1_1DictConverter.xml
%feature("docstring") gdcm::DictConverter "

Class to convert a .dic file into something else: CXX code : embeded
dict into shared lib (DICT_DEFAULT)

Debug mode (DICT_DEBUG)

XML dict (DICT_XML).

C++ includes: gdcmDictConverter.h ";

%feature("docstring")  gdcm::DictConverter::Convert "void
gdcm::DictConverter::Convert() ";

%feature("docstring")  gdcm::DictConverter::DictConverter "gdcm::DictConverter::DictConverter() ";

%feature("docstring")  gdcm::DictConverter::GetDictName "const
std::string& gdcm::DictConverter::GetDictName() const ";

%feature("docstring")  gdcm::DictConverter::GetInputFilename "const
std::string& gdcm::DictConverter::GetInputFilename() const ";

%feature("docstring")  gdcm::DictConverter::GetOutputFilename "const
std::string& gdcm::DictConverter::GetOutputFilename() const ";

%feature("docstring")  gdcm::DictConverter::GetOutputType "int
gdcm::DictConverter::GetOutputType() const ";

%feature("docstring")  gdcm::DictConverter::SetDictName "void
gdcm::DictConverter::SetDictName(const char *name) ";

%feature("docstring")  gdcm::DictConverter::SetInputFileName "void
gdcm::DictConverter::SetInputFileName(const char *filename) ";

%feature("docstring")  gdcm::DictConverter::SetOutputFileName "void
gdcm::DictConverter::SetOutputFileName(const char *filename) ";

%feature("docstring")  gdcm::DictConverter::SetOutputType "void
gdcm::DictConverter::SetOutputType(int type) ";

%feature("docstring")  gdcm::DictConverter::~DictConverter "gdcm::DictConverter::~DictConverter() ";


// File: classgdcm_1_1DictEntry.xml
%feature("docstring") gdcm::DictEntry "

Class to represent an Entry in the Dict Does not really exist within
the DICOM definition, just a way to minimize storage and have a
mapping from gdcm::Tag to the needed information.

bla TODO FIXME: Need a PublicDictEntry...indeed DictEntry has a notion
of retired which does not exist in PrivateDictEntry...

See:   gdcm::Dict

C++ includes: gdcmDictEntry.h ";

%feature("docstring")  gdcm::DictEntry::DictEntry "gdcm::DictEntry::DictEntry(const char *name=\"\", VR const
&vr=VR::INVALID, VM const &vm=VM::VM0, bool ret=false) ";

%feature("docstring")  gdcm::DictEntry::GetKeyword "const char*
gdcm::DictEntry::GetKeyword() const

same as GetName but without spaces ";

%feature("docstring")  gdcm::DictEntry::GetName "const char*
gdcm::DictEntry::GetName() const

Set/Get Name. ";

%feature("docstring")  gdcm::DictEntry::GetRetired "bool
gdcm::DictEntry::GetRetired() const

Set/Get Retired flag. ";

%feature("docstring")  gdcm::DictEntry::GetVM "const VM&
gdcm::DictEntry::GetVM() const

Set/Get VM. ";

%feature("docstring")  gdcm::DictEntry::GetVR "const VR&
gdcm::DictEntry::GetVR() const

Set/Get VR. ";

%feature("docstring")  gdcm::DictEntry::IsUnique "bool
gdcm::DictEntry::IsUnique() const

Return whether the name of the DataElement can be considered to be
unique. As of 2008 all elements name were unique (except the
expclitely 'XX' ones) ";

%feature("docstring")  gdcm::DictEntry::SetElementXX "void
gdcm::DictEntry::SetElementXX(bool v)

Set whether element is shared in multiple elements (Source Image IDs
typically). ";

%feature("docstring")  gdcm::DictEntry::SetGroupXX "void
gdcm::DictEntry::SetGroupXX(bool v)

Set whether element is shared in multiple groups (Curve/Overlay
typically). ";

%feature("docstring")  gdcm::DictEntry::SetName "void
gdcm::DictEntry::SetName(const char *name) ";

%feature("docstring")  gdcm::DictEntry::SetRetired "void
gdcm::DictEntry::SetRetired(bool retired) ";

%feature("docstring")  gdcm::DictEntry::SetVM "void
gdcm::DictEntry::SetVM(VM const &vm) ";

%feature("docstring")  gdcm::DictEntry::SetVR "void
gdcm::DictEntry::SetVR(const VR &vr) ";


// File: classgdcm_1_1DictPrinter.xml
%feature("docstring") gdcm::DictPrinter "

DictPrinter class.

C++ includes: gdcmDictPrinter.h ";

%feature("docstring")  gdcm::DictPrinter::DictPrinter "gdcm::DictPrinter::DictPrinter() ";

%feature("docstring")  gdcm::DictPrinter::Print "void
gdcm::DictPrinter::Print(std::ostream &os) ";

%feature("docstring")  gdcm::DictPrinter::~DictPrinter "gdcm::DictPrinter::~DictPrinter() ";


// File: classgdcm_1_1Dicts.xml
%feature("docstring") gdcm::Dicts "

Class to manipulate the sum of knowledge (all the dict user load).

bla

C++ includes: gdcmDicts.h ";

%feature("docstring")  gdcm::Dicts::Dicts "gdcm::Dicts::Dicts() ";

%feature("docstring")  gdcm::Dicts::GetCSAHeaderDict "const
CSAHeaderDict& gdcm::Dicts::GetCSAHeaderDict() const ";

%feature("docstring")  gdcm::Dicts::GetDictEntry "const DictEntry&
gdcm::Dicts::GetDictEntry(const Tag &tag, const char *owner=NULL)
const ";

%feature("docstring")  gdcm::Dicts::GetPrivateDict "const
PrivateDict& gdcm::Dicts::GetPrivateDict() const ";

%feature("docstring")  gdcm::Dicts::GetPublicDict "const Dict&
gdcm::Dicts::GetPublicDict() const ";

%feature("docstring")  gdcm::Dicts::IsEmpty "bool
gdcm::Dicts::IsEmpty() const ";

%feature("docstring")  gdcm::Dicts::~Dicts "gdcm::Dicts::~Dicts() ";


// File: classgdcm_1_1DirectionCosines.xml
%feature("docstring") gdcm::DirectionCosines "

class to handle DirectionCosines

C++ includes: gdcmDirectionCosines.h ";

%feature("docstring")  gdcm::DirectionCosines::Cross "void
gdcm::DirectionCosines::Cross(double z[3]) const

Compute Cross product. ";

%feature("docstring")  gdcm::DirectionCosines::DirectionCosines "gdcm::DirectionCosines::DirectionCosines(const double *dircos=0) ";

%feature("docstring")  gdcm::DirectionCosines::Dot "double
gdcm::DirectionCosines::Dot() const

Compute Dot. ";

%feature("docstring")  gdcm::DirectionCosines::IsValid "bool
gdcm::DirectionCosines::IsValid() const

Return whether or not this is a valid direction cosines. ";

%feature("docstring")  gdcm::DirectionCosines::Normalize "void
gdcm::DirectionCosines::Normalize()

Normalize in-place. ";

%feature("docstring")  gdcm::DirectionCosines::Print "void
gdcm::DirectionCosines::Print(std::ostream &) const

Print. ";

%feature("docstring")  gdcm::DirectionCosines::~DirectionCosines "gdcm::DirectionCosines::~DirectionCosines() ";


// File: classgdcm_1_1Directory.xml
%feature("docstring") gdcm::Directory "

Class for manipulation directories.

This implementation provide a cross platform implementation for
manipulating directores: basically traversing directories and
harvesting files

C++ includes: gdcmDirectory.h ";

%feature("docstring")  gdcm::Directory::Directory "gdcm::Directory::Directory() ";

%feature("docstring")  gdcm::Directory::GetDirectories "FilenamesType
const& gdcm::Directory::GetDirectories() const

Return the Directories traversed. ";

%feature("docstring")  gdcm::Directory::GetFilenames "FilenamesType
const& gdcm::Directory::GetFilenames() const

Set/Get the file names within the directory. ";

%feature("docstring")  gdcm::Directory::GetToplevel "FilenameType
const& gdcm::Directory::GetToplevel() const

Get the name of the toplevel directory. ";

%feature("docstring")  gdcm::Directory::Load "unsigned int
gdcm::Directory::Load(FilenameType const &name, bool recursive=false)

construct a list of filenames and subdirectory beneath directory: name
";

%feature("docstring")  gdcm::Directory::Print "void
gdcm::Directory::Print(std::ostream &_os=std::cout) ";

%feature("docstring")  gdcm::Directory::~Directory "gdcm::Directory::~Directory() ";


// File: classstd_1_1domain__error.xml
%feature("docstring") std::domain_error "

STL class. ";


// File: classgdcm_1_1Dumper.xml
%feature("docstring") gdcm::Dumper "

Codec class.

Use it to simply dump value read from the file. No interpretation is
done. But it is real fast ! Almost no overhead

C++ includes: gdcmDumper.h ";

%feature("docstring")  gdcm::Dumper::Dumper "gdcm::Dumper::Dumper()
";

%feature("docstring")  gdcm::Dumper::~Dumper "gdcm::Dumper::~Dumper()
";


// File: classgdcm_1_1Element.xml
%feature("docstring") gdcm::Element "

Element class.

TODO

C++ includes: gdcmElement.h ";

%feature("docstring")  gdcm::Element::GetLength "unsigned long
gdcm::Element< TVR, TVM >::GetLength() const ";

%feature("docstring")  gdcm::Element::GetValue "VRToType<TVR>::Type&
gdcm::Element< TVR, TVM >::GetValue(unsigned int idx=0) ";

%feature("docstring")  gdcm::Element::GetValue "const
VRToType<TVR>::Type& gdcm::Element< TVR, TVM >::GetValue(unsigned int
idx=0) const ";

%feature("docstring")  gdcm::Element::Print "void gdcm::Element< TVR,
TVM >::Print(std::ostream &_os) const ";

%feature("docstring")  gdcm::Element::Read "void gdcm::Element< TVR,
TVM >::Read(std::istream &_is) ";

%feature("docstring")  gdcm::Element::Set "void gdcm::Element< TVR,
TVM >::Set(Value const &v) ";

%feature("docstring")  gdcm::Element::SetValue "void gdcm::Element<
TVR, TVM >::SetValue(typename VRToType< TVR >::Type v, unsigned int
idx=0) ";

%feature("docstring")  gdcm::Element::Write "void gdcm::Element< TVR,
TVM >::Write(std::ostream &_os) const ";


// File: classgdcm_1_1Element_3_01TVR_00_01VM_1_1VM1__n_01_4.xml
%feature("docstring") gdcm::Element< TVR, VM::VM1_n > " C++ includes:
gdcmElement.h ";

%feature("docstring")  gdcm::Element< TVR, VM::VM1_n >::Element "
gdcm::Element< TVR, VM::VM1_n >::Element(const Element &_val) ";

%feature("docstring")  gdcm::Element< TVR, VM::VM1_n >::Element "
gdcm::Element< TVR, VM::VM1_n >::Element() ";

%feature("docstring")  gdcm::Element< TVR, VM::VM1_n
>::GetAsDataElement " DataElement gdcm::Element< TVR, VM::VM1_n
>::GetAsDataElement() const ";

%feature("docstring")  gdcm::Element< TVR, VM::VM1_n >::GetLength "
unsigned long gdcm::Element< TVR, VM::VM1_n >::GetLength() const ";

%feature("docstring")  gdcm::Element< TVR, VM::VM1_n >::GetValue "
VRToType<TVR>::Type& gdcm::Element< TVR, VM::VM1_n
>::GetValue(unsigned int idx=0) ";

%feature("docstring")  gdcm::Element< TVR, VM::VM1_n >::GetValue "
const VRToType<TVR>::Type& gdcm::Element< TVR, VM::VM1_n
>::GetValue(unsigned int idx=0) const ";

%feature("docstring")  gdcm::Element< TVR, VM::VM1_n >::Print " void
gdcm::Element< TVR, VM::VM1_n >::Print(std::ostream &_os) const ";

%feature("docstring")  gdcm::Element< TVR, VM::VM1_n >::Read " void
gdcm::Element< TVR, VM::VM1_n >::Read(std::istream &_is) ";

%feature("docstring")  gdcm::Element< TVR, VM::VM1_n >::Set " void
gdcm::Element< TVR, VM::VM1_n >::Set(Value const &v) ";

%feature("docstring")  gdcm::Element< TVR, VM::VM1_n >::SetArray "
void gdcm::Element< TVR, VM::VM1_n >::SetArray(const Type *array,
unsigned long len, bool save=false) ";

%feature("docstring")  gdcm::Element< TVR, VM::VM1_n >::SetLength "
void gdcm::Element< TVR, VM::VM1_n >::SetLength(unsigned long len) ";

%feature("docstring")  gdcm::Element< TVR, VM::VM1_n >::SetValue "
void gdcm::Element< TVR, VM::VM1_n >::SetValue(typename VRToType< TVR
>::Type v, unsigned int idx=0) ";

%feature("docstring")  gdcm::Element< TVR, VM::VM1_n >::Write " void
gdcm::Element< TVR, VM::VM1_n >::Write(std::ostream &_os) const ";

%feature("docstring")  gdcm::Element< TVR, VM::VM1_n >::WriteASCII "
void gdcm::Element< TVR, VM::VM1_n >::WriteASCII(std::ostream &os)
const ";

%feature("docstring")  gdcm::Element< TVR, VM::VM1_n >::~Element "
gdcm::Element< TVR, VM::VM1_n >::~Element() ";


// File: classgdcm_1_1Element_3_01TVR_00_01VM_1_1VM2__2n_01_4.xml
%feature("docstring") gdcm::Element< TVR, VM::VM2_2n > " C++ includes:
gdcmElement.h ";

%feature("docstring")  gdcm::Element< TVR, VM::VM2_2n >::SetLength "
void gdcm::Element< TVR, VM::VM2_2n >::SetLength(int len) ";


// File: classgdcm_1_1Element_3_01TVR_00_01VM_1_1VM2__n_01_4.xml
%feature("docstring") gdcm::Element< TVR, VM::VM2_n > " C++ includes:
gdcmElement.h ";

%feature("docstring")  gdcm::Element< TVR, VM::VM2_n >::SetLength "
void gdcm::Element< TVR, VM::VM2_n >::SetLength(int len) ";


// File: classgdcm_1_1Element_3_01TVR_00_01VM_1_1VM3__3n_01_4.xml
%feature("docstring") gdcm::Element< TVR, VM::VM3_3n > " C++ includes:
gdcmElement.h ";

%feature("docstring")  gdcm::Element< TVR, VM::VM3_3n >::SetLength "
void gdcm::Element< TVR, VM::VM3_3n >::SetLength(int len) ";


// File: classgdcm_1_1Element_3_01TVR_00_01VM_1_1VM3__n_01_4.xml
%feature("docstring") gdcm::Element< TVR, VM::VM3_n > " C++ includes:
gdcmElement.h ";

%feature("docstring")  gdcm::Element< TVR, VM::VM3_n >::SetLength "
void gdcm::Element< TVR, VM::VM3_n >::SetLength(int len) ";


// File: classgdcm_1_1Element_3_01VR_1_1AS_00_01VM_1_1VM5_01_4.xml
%feature("docstring") gdcm::Element< VR::AS, VM::VM5 > " C++ includes:
gdcmElement.h ";

%feature("docstring")  gdcm::Element< VR::AS, VM::VM5 >::GetLength "
unsigned long gdcm::Element< VR::AS, VM::VM5 >::GetLength() const ";

%feature("docstring")  gdcm::Element< VR::AS, VM::VM5 >::Print " void
gdcm::Element< VR::AS, VM::VM5 >::Print(std::ostream &_os) const ";


// File: classgdcm_1_1Element_3_01VR_1_1OB_00_01VM_1_1VM1_01_4.xml
%feature("docstring") gdcm::Element< VR::OB, VM::VM1 > " C++ includes:
gdcmElement.h ";


// File: classgdcm_1_1Element_3_01VR_1_1OW_00_01VM_1_1VM1_01_4.xml
%feature("docstring") gdcm::Element< VR::OW, VM::VM1 > " C++ includes:
gdcmElement.h ";


// File: classgdcm_1_1EncapsulatedDocument.xml
%feature("docstring") gdcm::EncapsulatedDocument "

EncapsulatedDocument.

C++ includes: gdcmEncapsulatedDocument.h ";

%feature("docstring")
gdcm::EncapsulatedDocument::EncapsulatedDocument "gdcm::EncapsulatedDocument::EncapsulatedDocument() ";


// File: classgdcm_1_1EncodingImplementation_3_01VR_1_1VRASCII_01_4.xml
%feature("docstring") gdcm::EncodingImplementation< VR::VRASCII > "
C++ includes: gdcmElement.h ";

%feature("docstring")  gdcm::EncodingImplementation< VR::VRASCII
>::Write " void gdcm::EncodingImplementation< VR::VRASCII
>::Write(const double *data, unsigned long length, std::ostream &_os)
";

%feature("docstring")  gdcm::EncodingImplementation< VR::VRASCII
>::Write " void gdcm::EncodingImplementation< VR::VRASCII
>::Write(const float *data, unsigned long length, std::ostream &_os)
";


// File: classgdcm_1_1EncodingImplementation_3_01VR_1_1VRBINARY_01_4.xml
%feature("docstring") gdcm::EncodingImplementation< VR::VRBINARY > "
C++ includes: gdcmElement.h ";


// File: classgdcm_1_1EnumeratedValues.xml
%feature("docstring") gdcm::EnumeratedValues "

Enumerated Values are used when the specified explicit Values are the
only Values allowed for a Data Element. A Data Element with Enumerated
Values that does not have a Value equivalent to one of the Values
specified in this standard has an invalid value within the scope of a
specific Information Object/SOP Class definition. Note: 1. Patient Sex
(0010, 0040) is an example of a Data Element having Enumerated Values.
It is defined to have a Value that is either \"M, \"F, or \"O (see PS
3.3). No other Value shall be given to this Data Element. 2. Future
modifications of this standard may add to the set of allowed values
for Data Elements with Enumerated Values. Such additions by themselves
may or may not require a change in SOP Class UIDs, depending on the
semantics of the Data Element.

C++ includes: gdcmEnumeratedValues.h ";

%feature("docstring")  gdcm::EnumeratedValues::EnumeratedValues "gdcm::EnumeratedValues::EnumeratedValues() ";


// File: classstd_1_1exception.xml
%feature("docstring") std::exception "

STL class. ";


// File: classgdcm_1_1Exception.xml
%feature("docstring") gdcm::Exception "

Exception.

Standard exception handling object.

C++ includes: gdcmException.h ";

%feature("docstring")  gdcm::Exception::Exception "gdcm::Exception::Exception(const char *desc=\"None\", const char
*file=__FILE__, unsigned int lineNumber=__LINE__, const char
*loc=\"\") ";

%feature("docstring")  gdcm::Exception::GetDescription "const char*
gdcm::Exception::GetDescription() const

Return the Description. ";

%feature("docstring")  gdcm::Exception::what "const char*
gdcm::Exception::what() const  throw () what implementation ";

%feature("docstring")  gdcm::Exception::~Exception "virtual
gdcm::Exception::~Exception()  throw ()";


// File: classgdcm_1_1ExplicitDataElement.xml
%feature("docstring") gdcm::ExplicitDataElement "

Class to read/write a DataElement as Explicit Data Element.

bla

C++ includes: gdcmExplicitDataElement.h ";

%feature("docstring")  gdcm::ExplicitDataElement::GetLength "VL
gdcm::ExplicitDataElement::GetLength() const ";

%feature("docstring")  gdcm::ExplicitDataElement::Read "std::istream&
gdcm::ExplicitDataElement::Read(std::istream &is) ";

%feature("docstring")  gdcm::ExplicitDataElement::ReadWithLength "std::istream& gdcm::ExplicitDataElement::ReadWithLength(std::istream
&is, VL &length) ";

%feature("docstring")  gdcm::ExplicitDataElement::Write "const
std::ostream& gdcm::ExplicitDataElement::Write(std::ostream &os) const
";


// File: classgdcm_1_1ExplicitImplicitDataElement.xml
%feature("docstring") gdcm::ExplicitImplicitDataElement "

Class to read/write a DataElement as ExplicitImplicit Data Element.

This only happen for some Philips images Should I derive from
ExplicitDataElement instead ? This is the class that is the closest
the GDCM1.x parser. At each element we try first to read it as
explicit, if this fails, then we try again as an implicit element.

C++ includes: gdcmExplicitImplicitDataElement.h ";

%feature("docstring")  gdcm::ExplicitImplicitDataElement::GetLength "VL gdcm::ExplicitImplicitDataElement::GetLength() const ";

%feature("docstring")  gdcm::ExplicitImplicitDataElement::Read "std::istream& gdcm::ExplicitImplicitDataElement::Read(std::istream
&is) ";


// File: classgdcm_1_1Fiducials.xml
%feature("docstring") gdcm::Fiducials "

Fiducials.

C++ includes: gdcmFiducials.h ";

%feature("docstring")  gdcm::Fiducials::Fiducials "gdcm::Fiducials::Fiducials() ";


// File: classgdcm_1_1File.xml
%feature("docstring") gdcm::File "

a DICOM File See PS 3.10 File: A File is an ordered string of zero or
more bytes, where the first byte is at the beginning of the file and
the last byte at the end of the File. Files are identified by a unique
File ID and may by written, read and/or deleted.

C++ includes: gdcmFile.h ";

%feature("docstring")  gdcm::File::File "gdcm::File::File() ";

%feature("docstring")  gdcm::File::GetDataSet "DataSet&
gdcm::File::GetDataSet() ";

%feature("docstring")  gdcm::File::GetDataSet "const DataSet&
gdcm::File::GetDataSet() const ";

%feature("docstring")  gdcm::File::GetHeader "FileMetaInformation&
gdcm::File::GetHeader() ";

%feature("docstring")  gdcm::File::GetHeader "const
FileMetaInformation& gdcm::File::GetHeader() const ";

%feature("docstring")  gdcm::File::Read "std::istream&
gdcm::File::Read(std::istream &is) ";

%feature("docstring")  gdcm::File::SetDataSet "void
gdcm::File::SetDataSet(const DataSet &ds) ";

%feature("docstring")  gdcm::File::SetHeader "void
gdcm::File::SetHeader(const FileMetaInformation &fmi) ";

%feature("docstring")  gdcm::File::Write "std::ostream const&
gdcm::File::Write(std::ostream &os) const ";

%feature("docstring")  gdcm::File::~File "gdcm::File::~File() ";


// File: classgdcm_1_1FileMetaInformation.xml
%feature("docstring") gdcm::FileMetaInformation "

Class to represent a File Meta Information.

FileMetaInformation is a Explicit Structured Set. Whenever the file
contains an ImplicitDataElement DataSet, a conversion will take place.
Todo If user adds an element with group != 0x0002 it will be
written... Definition: The File Meta Information includes identifying
information on the encapsulated Data Set. This header consists of a
128 byte File Preamble, followed by a 4 byte DICOM prefix, followed by
the File Meta Elements shown in Table 7.1-1. This header shall be
present in every DICOM file.

C++ includes: gdcmFileMetaInformation.h ";

%feature("docstring")  gdcm::FileMetaInformation::FileMetaInformation
"gdcm::FileMetaInformation::FileMetaInformation(FileMetaInformation
const &fmi) ";

%feature("docstring")  gdcm::FileMetaInformation::FileMetaInformation
"gdcm::FileMetaInformation::FileMetaInformation() ";

%feature("docstring")  gdcm::FileMetaInformation::FillFromDataSet "void gdcm::FileMetaInformation::FillFromDataSet(DataSet const &ds)

Construct a FileMetaInformation from an already existing DataSet:. ";

%feature("docstring")
gdcm::FileMetaInformation::GetDataSetTransferSyntax "const
TransferSyntax& gdcm::FileMetaInformation::GetDataSetTransferSyntax()
const ";

%feature("docstring")  gdcm::FileMetaInformation::GetMediaStorage "MediaStorage gdcm::FileMetaInformation::GetMediaStorage() const ";

%feature("docstring")  gdcm::FileMetaInformation::GetMetaInformationTS
"TransferSyntax::NegociatedType
gdcm::FileMetaInformation::GetMetaInformationTS() const ";

%feature("docstring")  gdcm::FileMetaInformation::GetPreamble "Preamble& gdcm::FileMetaInformation::GetPreamble() ";

%feature("docstring")  gdcm::FileMetaInformation::GetPreamble "const
Preamble& gdcm::FileMetaInformation::GetPreamble() const

Get Preamble. ";

%feature("docstring")  gdcm::FileMetaInformation::Insert "void
gdcm::FileMetaInformation::Insert(const DataElement &de)

Insert a DataElement in the DataSet. WARNING:  : Tag need to be >= 0x8
to be considered valid data element ";

%feature("docstring")  gdcm::FileMetaInformation::IsValid "bool
gdcm::FileMetaInformation::IsValid() const ";

%feature("docstring")  gdcm::FileMetaInformation::Read "std::istream&
gdcm::FileMetaInformation::Read(std::istream &is)

Read. ";

%feature("docstring")  gdcm::FileMetaInformation::ReadCompat "std::istream& gdcm::FileMetaInformation::ReadCompat(std::istream &is)
";

%feature("docstring")  gdcm::FileMetaInformation::Replace "void
gdcm::FileMetaInformation::Replace(const DataElement &de)

Replace a dataelement with another one. ";

%feature("docstring")
gdcm::FileMetaInformation::SetDataSetTransferSyntax "void
gdcm::FileMetaInformation::SetDataSetTransferSyntax(const
TransferSyntax &ts) ";

%feature("docstring")  gdcm::FileMetaInformation::SetPreamble "void
gdcm::FileMetaInformation::SetPreamble(const Preamble &p) ";

%feature("docstring")  gdcm::FileMetaInformation::Write "std::ostream& gdcm::FileMetaInformation::Write(std::ostream &os) const

Write. ";

%feature("docstring")  gdcm::FileMetaInformation::~FileMetaInformation
"gdcm::FileMetaInformation::~FileMetaInformation() ";


// File: classgdcm_1_1Filename.xml
%feature("docstring") gdcm::Filename "

Class to manipulate file name's.

OS independant representation of a filename (to query path, name and
extension from a filename)

C++ includes: gdcmFilename.h ";

%feature("docstring")  gdcm::Filename::Filename "gdcm::Filename::Filename(const char *filename=\"\") ";

%feature("docstring")  gdcm::Filename::GetExtension "const char*
gdcm::Filename::GetExtension()

return only the extension part of a filename ";

%feature("docstring")  gdcm::Filename::GetFileName "const char*
gdcm::Filename::GetFileName() const

Return the full filename. ";

%feature("docstring")  gdcm::Filename::GetName "const char*
gdcm::Filename::GetName()

return only the name part of a filename ";

%feature("docstring")  gdcm::Filename::GetPath "const char*
gdcm::Filename::GetPath()

Return only the path component of a filename. ";

%feature("docstring")  gdcm::Filename::IsEmpty "bool
gdcm::Filename::IsEmpty() const

return whether the filename is empty ";

%feature("docstring")  gdcm::Filename::IsIdentical "bool
gdcm::Filename::IsIdentical(Filename const &fn) const ";

%feature("docstring")  gdcm::Filename::ToUnixSlashes "const char*
gdcm::Filename::ToUnixSlashes()

Convert backslash (windows style) to UNIX style slash. ";


// File: classgdcm_1_1FilenameGenerator.xml
%feature("docstring") gdcm::FilenameGenerator "

FilenameGenerator.

class to generate filenames based on a pattern (C-style)

Output will be:

for i = 0, number of filenames: outfilename[i] = prefix + (pattern %
i)

where pattern % i means C-style snprintf of Pattern using value 'i'

C++ includes: gdcmFilenameGenerator.h ";

%feature("docstring")  gdcm::FilenameGenerator::FilenameGenerator "gdcm::FilenameGenerator::FilenameGenerator() ";

%feature("docstring")  gdcm::FilenameGenerator::Generate "bool
gdcm::FilenameGenerator::Generate()

Generate (return success). ";

%feature("docstring")  gdcm::FilenameGenerator::GetFilename "const
char* gdcm::FilenameGenerator::GetFilename(unsigned int n) const

Get a particular filename (call after Generate). ";

%feature("docstring")  gdcm::FilenameGenerator::GetFilenames "FilenamesType const& gdcm::FilenameGenerator::GetFilenames() const

Return all filenames. ";

%feature("docstring")  gdcm::FilenameGenerator::GetNumberOfFilenames "unsigned int gdcm::FilenameGenerator::GetNumberOfFilenames() const ";

%feature("docstring")  gdcm::FilenameGenerator::GetPattern "const
char* gdcm::FilenameGenerator::GetPattern() const ";

%feature("docstring")  gdcm::FilenameGenerator::GetPrefix "const
char* gdcm::FilenameGenerator::GetPrefix() const ";

%feature("docstring")  gdcm::FilenameGenerator::SetNumberOfFilenames "void gdcm::FilenameGenerator::SetNumberOfFilenames(unsigned int
nfiles)

Set/Get the number of filenames to generate. ";

%feature("docstring")  gdcm::FilenameGenerator::SetPattern "void
gdcm::FilenameGenerator::SetPattern(const char *pattern)

Set/Get pattern. ";

%feature("docstring")  gdcm::FilenameGenerator::SetPrefix "void
gdcm::FilenameGenerator::SetPrefix(const char *prefix)

Set/Get prefix. ";

%feature("docstring")  gdcm::FilenameGenerator::~FilenameGenerator "gdcm::FilenameGenerator::~FilenameGenerator() ";


// File: classgdcm_1_1FileSet.xml
%feature("docstring") gdcm::FileSet "

File-set: A File-set is a collection of DICOM Files (and possibly non-
DICOM Files) that share a common naming space within which File IDs
are unique.

C++ includes: gdcmFileSet.h ";

%feature("docstring")  gdcm::FileSet::AddFile "void
gdcm::FileSet::AddFile(const File &file) ";

%feature("docstring")  gdcm::FileSet::FileSet "gdcm::FileSet::FileSet() ";


// File: classgdcm_1_1Fragment.xml
%feature("docstring") gdcm::Fragment "

Class to represent a Fragment.

C++ includes: gdcmFragment.h ";

%feature("docstring")  gdcm::Fragment::Fragment "gdcm::Fragment::Fragment() ";

%feature("docstring")  gdcm::Fragment::GetLength "VL
gdcm::Fragment::GetLength() const ";

%feature("docstring")  gdcm::Fragment::Read "std::istream&
gdcm::Fragment::Read(std::istream &is) ";

%feature("docstring")  gdcm::Fragment::Write "std::ostream&
gdcm::Fragment::Write(std::ostream &os) const ";


// File: classstd_1_1fstream.xml
%feature("docstring") std::fstream "

STL class. ";


// File: classitk_1_1GDCMImageIO2.xml
%feature("docstring") itk::GDCMImageIO2 "

ImageIO class for reading and writing DICOM V3.0 and ACR/NEMA (V1.0 &
V2.0) images This class is only an adaptor to the gdcm library
(currently gdcm 2.0.0 is used):.

http://gdcm.sourceforge.net

C++ includes: itkGDCMImageIO2.h ";

%feature("docstring")  itk::GDCMImageIO2::CanReadFile "virtual bool
itk::GDCMImageIO2::CanReadFile(const char *)

Determine the file type. Returns true if this ImageIO can read the
file specified. ";

%feature("docstring")  itk::GDCMImageIO2::CanWriteFile "virtual bool
itk::GDCMImageIO2::CanWriteFile(const char *)

Determine the file type. Returns true if this ImageIO can write the
file specified. GDCM triggers on \".dcm\" and \".dicom\". ";

%feature("docstring")  itk::GDCMImageIO2::itkNewMacro "itk::GDCMImageIO2::itkNewMacro(Self)

Method for creation through the object factory. ";

%feature("docstring")  itk::GDCMImageIO2::itkTypeMacro "itk::GDCMImageIO2::itkTypeMacro(GDCMImageIO2, Superclass)

Run-time type information (and related methods). ";

%feature("docstring")  itk::GDCMImageIO2::Read "virtual void
itk::GDCMImageIO2::Read(void *buffer)

Reads the data from disk into the memory buffer provided. ";

%feature("docstring")  itk::GDCMImageIO2::ReadImageInformation "virtual void itk::GDCMImageIO2::ReadImageInformation()

Set the spacing and dimesion information for the current filename. ";

%feature("docstring")  itk::GDCMImageIO2::Write "virtual void
itk::GDCMImageIO2::Write(const void *buffer)

Writes the data to disk from the memory buffer provided. Make sure
that the IORegion has been set properly. ";

%feature("docstring")  itk::GDCMImageIO2::WriteImageInformation "virtual void itk::GDCMImageIO2::WriteImageInformation()

Writes the spacing and dimentions of the image. Assumes SetFileName
has been called with a valid file name. ";


// File: classgdcm_1_1Global.xml
%feature("docstring") gdcm::Global "

Global.

bla Global should be included in any translation unit that will use
Dict or that implements the singleton pattern. It makes sure that the
Dict singleton is created before and destroyed after all other
singletons in VTK.

C++ includes: gdcmGlobal.h ";

%feature("docstring")  gdcm::Global::Append "bool
gdcm::Global::Append(const char *path)

Append path at the end of the path list. ";

%feature("docstring")  gdcm::Global::GetDefs "Defs const&
gdcm::Global::GetDefs() const

retrieve the default/internal (Part 3) You need to explicitely call
LoadResourcesFiles before ";

%feature("docstring")  gdcm::Global::GetDicts "Dicts const&
gdcm::Global::GetDicts() const

retrieve the default/internal dicts (Part 6) This dict is filled up at
load time ";

%feature("docstring")  gdcm::Global::Global "gdcm::Global::Global()
";

%feature("docstring")  gdcm::Global::LoadResourcesFiles "bool
gdcm::Global::LoadResourcesFiles()

Load all internal XML files, ressource path need to have been set
before calling this member function (see Append/Prepend members func)
";

%feature("docstring")  gdcm::Global::Prepend "bool
gdcm::Global::Prepend(const char *path)

Prepend path at the begining of the path list. ";

%feature("docstring")  gdcm::Global::~Global "gdcm::Global::~Global()
";


// File: classgdcm_1_1GroupDict.xml
%feature("docstring") gdcm::GroupDict "

Class to represent the mapping from group number to its abbreviation
and name.

Should I rewrite this class to use a std::map instead of std::vector
for problem of memory consumption ?

C++ includes: gdcmGroupDict.h ";

%feature("docstring")  gdcm::GroupDict::GetAbbreviation "std::string
const& gdcm::GroupDict::GetAbbreviation(uint16_t num) const ";

%feature("docstring")  gdcm::GroupDict::GetName "std::string const&
gdcm::GroupDict::GetName(uint16_t num) const ";

%feature("docstring")  gdcm::GroupDict::GroupDict "gdcm::GroupDict::GroupDict() ";

%feature("docstring")  gdcm::GroupDict::Size "unsigned long
gdcm::GroupDict::Size() const ";

%feature("docstring")  gdcm::GroupDict::~GroupDict "gdcm::GroupDict::~GroupDict() ";


// File: classgdcm_1_1IconImage.xml
%feature("docstring") gdcm::IconImage "

IconImage class.

C++ includes: gdcmIconImage.h ";

%feature("docstring")  gdcm::IconImage::Clear "void
gdcm::IconImage::Clear() ";

%feature("docstring")  gdcm::IconImage::GetBuffer "bool
gdcm::IconImage::GetBuffer(char *buffer) const ";

%feature("docstring")  gdcm::IconImage::GetColumns "int
gdcm::IconImage::GetColumns() const ";

%feature("docstring")  gdcm::IconImage::GetDataElement "const
DataElement& gdcm::IconImage::GetDataElement() const ";

%feature("docstring")  gdcm::IconImage::GetPhotometricInterpretation "const PhotometricInterpretation&
gdcm::IconImage::GetPhotometricInterpretation() const ";

%feature("docstring")  gdcm::IconImage::GetPixelFormat "const
PixelFormat& gdcm::IconImage::GetPixelFormat() const ";

%feature("docstring")  gdcm::IconImage::GetRows "int
gdcm::IconImage::GetRows() const ";

%feature("docstring")  gdcm::IconImage::IconImage "gdcm::IconImage::IconImage() ";

%feature("docstring")  gdcm::IconImage::IsEmpty "bool
gdcm::IconImage::IsEmpty() const ";

%feature("docstring")  gdcm::IconImage::Print "void
gdcm::IconImage::Print(std::ostream &) const ";

%feature("docstring")  gdcm::IconImage::SetColumns "void
gdcm::IconImage::SetColumns(unsigned int col) ";

%feature("docstring")  gdcm::IconImage::SetDataElement "void
gdcm::IconImage::SetDataElement(DataElement const &de) ";

%feature("docstring")  gdcm::IconImage::SetDimension "void
gdcm::IconImage::SetDimension(unsigned int idx, unsigned int dim) ";

%feature("docstring")  gdcm::IconImage::SetPhotometricInterpretation "void
gdcm::IconImage::SetPhotometricInterpretation(PhotometricInterpretation
const &pi) ";

%feature("docstring")  gdcm::IconImage::SetPixelFormat "void
gdcm::IconImage::SetPixelFormat(PixelFormat const &pf) ";

%feature("docstring")  gdcm::IconImage::SetRows "void
gdcm::IconImage::SetRows(unsigned int rows) ";

%feature("docstring")  gdcm::IconImage::~IconImage "gdcm::IconImage::~IconImage() ";


// File: classstd_1_1ifstream.xml
%feature("docstring") std::ifstream "

STL class. ";


// File: classgdcm_1_1Image.xml
%feature("docstring") gdcm::Image "

Image.

This is the container for an Image in the general sense. From this
container you should be able to request information like: Origin

Dimension

PixelFormat ... But also to retrieve the image as a raw buffer (char
*) Since we have to deal with both RAW data and JPEG stream (which
internally encode all the above information) this API might seems
redundant. One way to solve that would be to subclass gdcm::Image with
gdcm::JPEGImage which would from the stream extract the header info
and fill it to please gdcm::Image...well except origin for instance

Basically you can see it as a storage for the PixelData element.
However it was also used for MRSpectroscopy object (as proof of
concept)

C++ includes: gdcmImage.h ";

%feature("docstring")  gdcm::Image::AreOverlaysInPixelData "bool
gdcm::Image::AreOverlaysInPixelData() const

returns if Overlays are stored in the unused bit of the pixel data: ";

%feature("docstring")  gdcm::Image::GetBuffer "bool
gdcm::Image::GetBuffer(char *buffer) const

Acces the raw data. ";

%feature("docstring")  gdcm::Image::GetBuffer2 "bool
gdcm::Image::GetBuffer2(std::ostream &os) const ";

%feature("docstring")  gdcm::Image::GetBufferLength "unsigned long
gdcm::Image::GetBufferLength() const

Return the length of the image after decompression WARNING for palette
color: It will NOT take into account the Palette Color thus you need
to multiply this length by 3 if the image is RGB for instance. ";

%feature("docstring")  gdcm::Image::GetCurve "const Curve&
gdcm::Image::GetCurve(unsigned int i=0) const ";

%feature("docstring")  gdcm::Image::GetCurve "Curve&
gdcm::Image::GetCurve(unsigned int i=0)

Curve: group 50xx. ";

%feature("docstring")  gdcm::Image::GetDataElement "DataElement&
gdcm::Image::GetDataElement() ";

%feature("docstring")  gdcm::Image::GetDataElement "const
DataElement& gdcm::Image::GetDataElement() const ";

%feature("docstring")  gdcm::Image::GetDimension "unsigned int
gdcm::Image::GetDimension(unsigned int idx) const ";

%feature("docstring")  gdcm::Image::GetDimensions "const unsigned
int* gdcm::Image::GetDimensions() const

Return the dimension of the pixel data, first dimension (x), then 2nd
(y), then 3rd (z)... ";

%feature("docstring")  gdcm::Image::GetDirectionCosines "double
gdcm::Image::GetDirectionCosines(unsigned int idx) const ";

%feature("docstring")  gdcm::Image::GetDirectionCosines "const
double* gdcm::Image::GetDirectionCosines() const

Return a 6-tuples specifying the direction cosines A default value of
(1,0,0,0,1,0) will be return when the direction cosines was not
specified. ";

%feature("docstring")  gdcm::Image::GetIconImage "IconImage&
gdcm::Image::GetIconImage() ";

%feature("docstring")  gdcm::Image::GetIconImage "const IconImage&
gdcm::Image::GetIconImage() const

Set/Get Icon Image. ";

%feature("docstring")  gdcm::Image::GetIntercept "double
gdcm::Image::GetIntercept() const ";

%feature("docstring")  gdcm::Image::GetLUT "LookupTable&
gdcm::Image::GetLUT() ";

%feature("docstring")  gdcm::Image::GetLUT "const LookupTable&
gdcm::Image::GetLUT() const ";

%feature("docstring")  gdcm::Image::GetNeedByteSwap "bool
gdcm::Image::GetNeedByteSwap() const ";

%feature("docstring")  gdcm::Image::GetNumberOfCurves "unsigned int
gdcm::Image::GetNumberOfCurves() const ";

%feature("docstring")  gdcm::Image::GetNumberOfDimensions "unsigned
int gdcm::Image::GetNumberOfDimensions() const

Return the number of dimension of the pixel data bytes; for example 2
for a 2D matrices of values. ";

%feature("docstring")  gdcm::Image::GetNumberOfOverlays "unsigned int
gdcm::Image::GetNumberOfOverlays() const ";

%feature("docstring")  gdcm::Image::GetOrigin "double
gdcm::Image::GetOrigin(unsigned int idx) const ";

%feature("docstring")  gdcm::Image::GetOrigin "const double*
gdcm::Image::GetOrigin() const

Return a 3-tuples specifying the origin Will return (0,0,0) if the
origin was not specified. ";

%feature("docstring")  gdcm::Image::GetOverlay "const Overlay&
gdcm::Image::GetOverlay(unsigned int i=0) const ";

%feature("docstring")  gdcm::Image::GetOverlay "Overlay&
gdcm::Image::GetOverlay(unsigned int i=0)

Overlay: group 60xx. ";

%feature("docstring")  gdcm::Image::GetPhotometricInterpretation "const PhotometricInterpretation&
gdcm::Image::GetPhotometricInterpretation() const

return the photometric interpretation ";

%feature("docstring")  gdcm::Image::GetPixelFormat "PixelFormat&
gdcm::Image::GetPixelFormat() ";

%feature("docstring")  gdcm::Image::GetPixelFormat "const
PixelFormat& gdcm::Image::GetPixelFormat() const

Get/Set PixelFormat. ";

%feature("docstring")  gdcm::Image::GetPlanarConfiguration "unsigned
int gdcm::Image::GetPlanarConfiguration() const

return the planar configuration ";

%feature("docstring")  gdcm::Image::GetSlope "double
gdcm::Image::GetSlope() const ";

%feature("docstring")  gdcm::Image::GetSpacing "double
gdcm::Image::GetSpacing(unsigned int idx) const ";

%feature("docstring")  gdcm::Image::GetSpacing "const double*
gdcm::Image::GetSpacing() const

Return a 3-tuples specifying the spacing NOTE: 3rd value can be an
aribtrary 1 value when the spacing was not specified (ex. 2D image).
WARNING: when the spacing is not specifier, a default value of 1 will
be returned ";

%feature("docstring")  gdcm::Image::GetSwapCode "SwapCode
gdcm::Image::GetSwapCode() const ";

%feature("docstring")  gdcm::Image::GetTransferSyntax "const
TransferSyntax& gdcm::Image::GetTransferSyntax() const ";

%feature("docstring")  gdcm::Image::Image "gdcm::Image::Image() ";

%feature("docstring")  gdcm::Image::Print "void
gdcm::Image::Print(std::ostream &os) const

print ";

%feature("docstring")  gdcm::Image::SetDataElement "void
gdcm::Image::SetDataElement(DataElement const &de) ";

%feature("docstring")  gdcm::Image::SetDimension "void
gdcm::Image::SetDimension(unsigned int idx, unsigned int dim) ";

%feature("docstring")  gdcm::Image::SetDimensions "void
gdcm::Image::SetDimensions(const unsigned int *dims) ";

%feature("docstring")  gdcm::Image::SetDirectionCosines "void
gdcm::Image::SetDirectionCosines(unsigned int idx, double dircos) ";

%feature("docstring")  gdcm::Image::SetDirectionCosines "void
gdcm::Image::SetDirectionCosines(const double *dircos) ";

%feature("docstring")  gdcm::Image::SetDirectionCosines "void
gdcm::Image::SetDirectionCosines(const float *dircos) ";

%feature("docstring")  gdcm::Image::SetIntercept "void
gdcm::Image::SetIntercept(double intercept)

intercept ";

%feature("docstring")  gdcm::Image::SetLUT "void
gdcm::Image::SetLUT(LookupTable const &lut)

Set/Get LUT. ";

%feature("docstring")  gdcm::Image::SetNeedByteSwap "void
gdcm::Image::SetNeedByteSwap(bool b) ";

%feature("docstring")  gdcm::Image::SetNumberOfCurves "void
gdcm::Image::SetNumberOfCurves(unsigned int n) ";

%feature("docstring")  gdcm::Image::SetNumberOfDimensions "void
gdcm::Image::SetNumberOfDimensions(unsigned int dim) ";

%feature("docstring")  gdcm::Image::SetNumberOfOverlays "void
gdcm::Image::SetNumberOfOverlays(unsigned int n) ";

%feature("docstring")  gdcm::Image::SetOrigin "void
gdcm::Image::SetOrigin(unsigned int idx, double ori) ";

%feature("docstring")  gdcm::Image::SetOrigin "void
gdcm::Image::SetOrigin(const double *ori) ";

%feature("docstring")  gdcm::Image::SetOrigin "void
gdcm::Image::SetOrigin(const float *ori) ";

%feature("docstring")  gdcm::Image::SetPhotometricInterpretation "void
gdcm::Image::SetPhotometricInterpretation(PhotometricInterpretation
const &pi) ";

%feature("docstring")  gdcm::Image::SetPixelFormat "void
gdcm::Image::SetPixelFormat(PixelFormat const &pf) ";

%feature("docstring")  gdcm::Image::SetPlanarConfiguration "void
gdcm::Image::SetPlanarConfiguration(unsigned int pc) ";

%feature("docstring")  gdcm::Image::SetSlope "void
gdcm::Image::SetSlope(double slope)

slope ";

%feature("docstring")  gdcm::Image::SetSpacing "void
gdcm::Image::SetSpacing(unsigned int idx, double spacing) ";

%feature("docstring")  gdcm::Image::SetSpacing "void
gdcm::Image::SetSpacing(const double *spacing) ";

%feature("docstring")  gdcm::Image::SetSwapCode "void
gdcm::Image::SetSwapCode(SwapCode sc) ";

%feature("docstring")  gdcm::Image::SetTransferSyntax "void
gdcm::Image::SetTransferSyntax(TransferSyntax const &ts)

Transfer syntax. ";

%feature("docstring")  gdcm::Image::~Image "gdcm::Image::~Image() ";


// File: classgdcm_1_1ImageApplyLookupTable.xml
%feature("docstring") gdcm::ImageApplyLookupTable "

ImageApplyLookupTable class It applies the LUT the PixelData (only
PALETTE_COLOR images) Output will be a PhotometricInterpretation=RGB
image.

C++ includes: gdcmImageApplyLookupTable.h ";

%feature("docstring")  gdcm::ImageApplyLookupTable::Apply "bool
gdcm::ImageApplyLookupTable::Apply()

Apply. ";

%feature("docstring")
gdcm::ImageApplyLookupTable::ImageApplyLookupTable "gdcm::ImageApplyLookupTable::ImageApplyLookupTable() ";

%feature("docstring")
gdcm::ImageApplyLookupTable::~ImageApplyLookupTable "gdcm::ImageApplyLookupTable::~ImageApplyLookupTable() ";


// File: classgdcm_1_1ImageChangePhotometricInterpretation.xml
%feature("docstring") gdcm::ImageChangePhotometricInterpretation "

ImageChangePhotometricInterpretation class Class to change the
Photometric Interpetation of an input DICOM.

C++ includes: gdcmImageChangePhotometricInterpretation.h ";

%feature("docstring")
gdcm::ImageChangePhotometricInterpretation::Change "bool
gdcm::ImageChangePhotometricInterpretation::Change()

Change. ";

%feature("docstring")
gdcm::ImageChangePhotometricInterpretation::GetPhotometricInterpretation
"const PhotometricInterpretation&
gdcm::ImageChangePhotometricInterpretation::GetPhotometricInterpretation()
const ";

%feature("docstring")
gdcm::ImageChangePhotometricInterpretation::ImageChangePhotometricInterpretation
"gdcm::ImageChangePhotometricInterpretation::ImageChangePhotometricInterpretation()
";

%feature("docstring")
gdcm::ImageChangePhotometricInterpretation::SetPhotometricInterpretation
"void
gdcm::ImageChangePhotometricInterpretation::SetPhotometricInterpretation(PhotometricInterpretation
const &pi)

Set/Get requested PhotometricInterpretation. ";

%feature("docstring")
gdcm::ImageChangePhotometricInterpretation::~ImageChangePhotometricInterpretation
"gdcm::ImageChangePhotometricInterpretation::~ImageChangePhotometricInterpretation()
";


// File: classgdcm_1_1ImageChangePlanarConfiguration.xml
%feature("docstring") gdcm::ImageChangePlanarConfiguration "

ImageChangePlanarConfiguration class Class to change the Planar
configuration of an input DICOM By default it will change into the
more usual reprensentation: PlanarConfiguration = 0.

C++ includes: gdcmImageChangePlanarConfiguration.h ";

%feature("docstring")  gdcm::ImageChangePlanarConfiguration::Change "bool gdcm::ImageChangePlanarConfiguration::Change()

Change. ";

%feature("docstring")
gdcm::ImageChangePlanarConfiguration::GetPlanarConfiguration "unsigned int
gdcm::ImageChangePlanarConfiguration::GetPlanarConfiguration() const
";

%feature("docstring")
gdcm::ImageChangePlanarConfiguration::ImageChangePlanarConfiguration "gdcm::ImageChangePlanarConfiguration::ImageChangePlanarConfiguration()
";

%feature("docstring")
gdcm::ImageChangePlanarConfiguration::SetPlanarConfiguration "void
gdcm::ImageChangePlanarConfiguration::SetPlanarConfiguration(unsigned
int pc)

Set/Get requested PlanarConfigation. ";

%feature("docstring")
gdcm::ImageChangePlanarConfiguration::~ImageChangePlanarConfiguration
"gdcm::ImageChangePlanarConfiguration::~ImageChangePlanarConfiguration()
";


// File: classgdcm_1_1ImageChangeTransferSyntax.xml
%feature("docstring") gdcm::ImageChangeTransferSyntax "

ImageChangeTransferSyntax class Class to change the transfer syntax of
an input DICOM.

C++ includes: gdcmImageChangeTransferSyntax.h ";

%feature("docstring")  gdcm::ImageChangeTransferSyntax::Change "bool
gdcm::ImageChangeTransferSyntax::Change()

Change. ";

%feature("docstring")
gdcm::ImageChangeTransferSyntax::GetTransferSyntax "const
TransferSyntax& gdcm::ImageChangeTransferSyntax::GetTransferSyntax()
const

Get Transfer Syntax. ";

%feature("docstring")
gdcm::ImageChangeTransferSyntax::ImageChangeTransferSyntax "gdcm::ImageChangeTransferSyntax::ImageChangeTransferSyntax() ";

%feature("docstring")  gdcm::ImageChangeTransferSyntax::SetForce "void gdcm::ImageChangeTransferSyntax::SetForce(bool f)

When target Transfer Syntax is identical to input target syntax, no
operation is actually done This is an issue when someone wants to
recompress using GDCM internal implementation a JPEG (for example)
image ";

%feature("docstring")
gdcm::ImageChangeTransferSyntax::SetTransferSyntax "void
gdcm::ImageChangeTransferSyntax::SetTransferSyntax(const
TransferSyntax &ts)

Set target Transfer Syntax. ";

%feature("docstring")
gdcm::ImageChangeTransferSyntax::~ImageChangeTransferSyntax "gdcm::ImageChangeTransferSyntax::~ImageChangeTransferSyntax() ";


// File: classgdcm_1_1ImageCodec.xml
%feature("docstring") gdcm::ImageCodec "

ImageCodec.

Main codec, this is a central place for all implementation

C++ includes: gdcmImageCodec.h ";

%feature("docstring")  gdcm::ImageCodec::CanDecode "bool
gdcm::ImageCodec::CanDecode(TransferSyntax const &) const

Return whether this decoder support this transfer syntax (can decode
it). ";

%feature("docstring")  gdcm::ImageCodec::Decode "bool
gdcm::ImageCodec::Decode(DataElement const &is, DataElement &os)

Decode. ";

%feature("docstring")  gdcm::ImageCodec::GetDimensions "const
unsigned int* gdcm::ImageCodec::GetDimensions() const ";

%feature("docstring")  gdcm::ImageCodec::GetLUT "const LookupTable&
gdcm::ImageCodec::GetLUT() const ";

%feature("docstring")  gdcm::ImageCodec::GetNeedByteSwap "bool
gdcm::ImageCodec::GetNeedByteSwap() const ";

%feature("docstring")  gdcm::ImageCodec::GetPhotometricInterpretation
"const PhotometricInterpretation&
gdcm::ImageCodec::GetPhotometricInterpretation() const ";

%feature("docstring")  gdcm::ImageCodec::GetPixelFormat "const
PixelFormat& gdcm::ImageCodec::GetPixelFormat() const ";

%feature("docstring")  gdcm::ImageCodec::GetPlanarConfiguration "unsigned int gdcm::ImageCodec::GetPlanarConfiguration() const ";

%feature("docstring")  gdcm::ImageCodec::ImageCodec "gdcm::ImageCodec::ImageCodec() ";

%feature("docstring")  gdcm::ImageCodec::SetDimensions "void
gdcm::ImageCodec::SetDimensions(const unsigned int *d) ";

%feature("docstring")  gdcm::ImageCodec::SetLUT "void
gdcm::ImageCodec::SetLUT(LookupTable const &lut) ";

%feature("docstring")  gdcm::ImageCodec::SetNeedByteSwap "void
gdcm::ImageCodec::SetNeedByteSwap(bool b) ";

%feature("docstring")  gdcm::ImageCodec::SetNeedOverlayCleanup "void
gdcm::ImageCodec::SetNeedOverlayCleanup(bool b) ";

%feature("docstring")  gdcm::ImageCodec::SetPhotometricInterpretation
"void
gdcm::ImageCodec::SetPhotometricInterpretation(PhotometricInterpretation
const &pi) ";

%feature("docstring")  gdcm::ImageCodec::SetPixelFormat "virtual void
gdcm::ImageCodec::SetPixelFormat(PixelFormat const &pf) ";

%feature("docstring")  gdcm::ImageCodec::SetPlanarConfiguration "void
gdcm::ImageCodec::SetPlanarConfiguration(unsigned int pc) ";

%feature("docstring")  gdcm::ImageCodec::~ImageCodec "gdcm::ImageCodec::~ImageCodec() ";


// File: classgdcm_1_1ImageConverter.xml
%feature("docstring") gdcm::ImageConverter "

Image Converter.

This is the class used to convert from on gdcm::Image to another This
is typically used to convert let say YBR JPEG compressed gdcm::Image
to a RAW RGB gdcm::Image. So that the buffer can be directly pass to
third party application. This filter is application level and not
integrated directly in GDCM

C++ includes: gdcmImageConverter.h ";

%feature("docstring")  gdcm::ImageConverter::Convert "void
gdcm::ImageConverter::Convert() ";

%feature("docstring")  gdcm::ImageConverter::GetOuput "const Image&
gdcm::ImageConverter::GetOuput() const ";

%feature("docstring")  gdcm::ImageConverter::ImageConverter "gdcm::ImageConverter::ImageConverter() ";

%feature("docstring")  gdcm::ImageConverter::SetInput "void
gdcm::ImageConverter::SetInput(Image const &input) ";

%feature("docstring")  gdcm::ImageConverter::~ImageConverter "gdcm::ImageConverter::~ImageConverter() ";


// File: classgdcm_1_1ImageFragmentSplitter.xml
%feature("docstring") gdcm::ImageFragmentSplitter "

ImageFragmentSplitter class For single frame image, DICOM standard
allow splitting the frame into multiple fragments.

C++ includes: gdcmImageFragmentSplitter.h ";

%feature("docstring")  gdcm::ImageFragmentSplitter::GetFragmentSizeMax
"unsigned int gdcm::ImageFragmentSplitter::GetFragmentSizeMax() const
";

%feature("docstring")
gdcm::ImageFragmentSplitter::ImageFragmentSplitter "gdcm::ImageFragmentSplitter::ImageFragmentSplitter() ";

%feature("docstring")  gdcm::ImageFragmentSplitter::SetForce "void
gdcm::ImageFragmentSplitter::SetForce(bool f)

When file already has all it's segment < FragmentSizeMax there is not
need to run the filter. Unless the user explicitly say 'force'
recomputation ! ";

%feature("docstring")  gdcm::ImageFragmentSplitter::SetFragmentSizeMax
"void gdcm::ImageFragmentSplitter::SetFragmentSizeMax(unsigned int
fragsize)

FragmentSizeMax needs to be an even number. ";

%feature("docstring")  gdcm::ImageFragmentSplitter::Split "bool
gdcm::ImageFragmentSplitter::Split()

Split. ";

%feature("docstring")
gdcm::ImageFragmentSplitter::~ImageFragmentSplitter "gdcm::ImageFragmentSplitter::~ImageFragmentSplitter() ";


// File: classgdcm_1_1ImageHelper.xml
%feature("docstring") gdcm::ImageHelper "

ImageHelper (internal class, not intended for user level).

Helper for writing World images in DICOM. DICOM has a 'template'
approach to image where MR Image Storage are distinct object from
Enhanced MR Image Storage. For example the Pixel Spacing in one object
is not at the same position (ie Tag) as in the other this class is the
central (read: fragile) place where all the dispatching is done from a
united view of a world image (typically VTK or ITK point of view) down
to the low level DICOM point of view.

WARNING:  : do not expect the API of this class to be maintain at any
point, since as Modalities are added the API might have to be
augmented or behavior changed to cope with new modalities.

C++ includes: gdcmImageHelper.h ";


// File: classgdcm_1_1ImageReader.xml
%feature("docstring") gdcm::ImageReader "

ImageReader.

its role is to convert the DICOM DataSet into a gdcm::Image
representation By default it is also loading the lookup table and
overlay when found as they impact the rendering or the image Todo old
gdcm 1.X used to have in its dictionary:

0028 0015 US 1 UsedNbX ACR Special (RET)

0028 0016 US 1 UsedNbY ACR Special (RET)

0028 0017 US 1 UsedNbZ ACR Special (RET)

0028 0018 US 1 UsedNbT ACR Special (RET)

since I cannot find them *anywhere* I'll have to hard code them
directly in a specific libido image reader

C++ includes: gdcmImageReader.h ";

%feature("docstring")  gdcm::ImageReader::GetImage "Image&
gdcm::ImageReader::GetImage() ";

%feature("docstring")  gdcm::ImageReader::GetImage "const Image&
gdcm::ImageReader::GetImage() const

Return the read image. ";

%feature("docstring")  gdcm::ImageReader::ImageReader "gdcm::ImageReader::ImageReader() ";

%feature("docstring")  gdcm::ImageReader::Read "bool
gdcm::ImageReader::Read()

Read the DICOM image. There are two reason for failure: 1. The input
filename is not DICOM 2. The input DICOM file does not contains an
Image ";

%feature("docstring")  gdcm::ImageReader::~ImageReader "gdcm::ImageReader::~ImageReader() ";


// File: classgdcm_1_1ImageToImageFilter.xml
%feature("docstring") gdcm::ImageToImageFilter "

ImageToImageFilter class Super class for all filter taking an image
and producing an output image.

C++ includes: gdcmImageToImageFilter.h ";

%feature("docstring")  gdcm::ImageToImageFilter::GetOutput "const
Image& gdcm::ImageToImageFilter::GetOutput() const

Get Output image. ";

%feature("docstring")  gdcm::ImageToImageFilter::ImageToImageFilter "gdcm::ImageToImageFilter::ImageToImageFilter() ";

%feature("docstring")  gdcm::ImageToImageFilter::SetInput "void
gdcm::ImageToImageFilter::SetInput(const Image &image)

Set input image. ";

%feature("docstring")  gdcm::ImageToImageFilter::~ImageToImageFilter "gdcm::ImageToImageFilter::~ImageToImageFilter() ";


// File: classgdcm_1_1ImageWriter.xml
%feature("docstring") gdcm::ImageWriter "

ImageWriter.

C++ includes: gdcmImageWriter.h ";

%feature("docstring")  gdcm::ImageWriter::GetImage "Image&
gdcm::ImageWriter::GetImage() ";

%feature("docstring")  gdcm::ImageWriter::GetImage "const Image&
gdcm::ImageWriter::GetImage() const

Set/Get Image to be written It will overwrite anything Image infos
found in DataSet (see parent class to see how to pass dataset) ";

%feature("docstring")  gdcm::ImageWriter::ImageWriter "gdcm::ImageWriter::ImageWriter() ";

%feature("docstring")  gdcm::ImageWriter::SetImage "void
gdcm::ImageWriter::SetImage(Image const &img) ";

%feature("docstring")  gdcm::ImageWriter::Write "bool
gdcm::ImageWriter::Write()

Write. ";

%feature("docstring")  gdcm::ImageWriter::~ImageWriter "gdcm::ImageWriter::~ImageWriter() ";


// File: classgdcm_1_1ImplicitDataElement.xml
%feature("docstring") gdcm::ImplicitDataElement "

Class to represent an *Implicit VR* Data Element.

bla

C++ includes: gdcmImplicitDataElement.h ";

%feature("docstring")  gdcm::ImplicitDataElement::GetLength "VL
gdcm::ImplicitDataElement::GetLength() const ";

%feature("docstring")  gdcm::ImplicitDataElement::Read "std::istream&
gdcm::ImplicitDataElement::Read(std::istream &is) ";

%feature("docstring")  gdcm::ImplicitDataElement::ReadWithLength "std::istream& gdcm::ImplicitDataElement::ReadWithLength(std::istream
&is, VL &length) ";

%feature("docstring")  gdcm::ImplicitDataElement::Write "const
std::ostream& gdcm::ImplicitDataElement::Write(std::ostream &os) const
";


// File: classgdcm_1_1ImplicitToExplicitFilter.xml
%feature("docstring") gdcm::ImplicitToExplicitFilter "

ImplicitToExplicitFilter class.

WARNING:  changing an implicit dataset to an explicit dataset is NOT a
trivial task of simply changing the VR to the dict one: One has to
make sure SQ is properly set

One has to recompute the explicit length SQ

One has to make sure that Vr is valid for the encoding

One has to make sure that VR 16bits can store the original value
length

C++ includes: gdcmImplicitToExplicitFilter.h ";

%feature("docstring")  gdcm::ImplicitToExplicitFilter::Change "bool
gdcm::ImplicitToExplicitFilter::Change()

Change. ";

%feature("docstring")  gdcm::ImplicitToExplicitFilter::GetFile "File&
gdcm::ImplicitToExplicitFilter::GetFile() ";

%feature("docstring")
gdcm::ImplicitToExplicitFilter::ImplicitToExplicitFilter "gdcm::ImplicitToExplicitFilter::ImplicitToExplicitFilter() ";

%feature("docstring")
gdcm::ImplicitToExplicitFilter::SetChangePrivateTags "void
gdcm::ImplicitToExplicitFilter::SetChangePrivateTags(bool b)

Decide whether or not to VR'ify private tags. ";

%feature("docstring")  gdcm::ImplicitToExplicitFilter::SetFile "void
gdcm::ImplicitToExplicitFilter::SetFile(const File &f)

Set/Get File. ";

%feature("docstring")  gdcm::ImplicitToExplicitFilter::SetUseVRUN "void gdcm::ImplicitToExplicitFilter::SetUseVRUN(bool b)

When VR=16bits in explicit but Implicit has a 32bits length, use
VR=UN. ";

%feature("docstring")
gdcm::ImplicitToExplicitFilter::~ImplicitToExplicitFilter "gdcm::ImplicitToExplicitFilter::~ImplicitToExplicitFilter() ";


// File: classstd_1_1invalid__argument.xml
%feature("docstring") std::invalid_argument "

STL class. ";


// File: classgdcm_1_1IOD.xml
%feature("docstring") gdcm::IOD "C++ includes: gdcmIOD.h ";

%feature("docstring")  gdcm::IOD::AddIODEntry "void
gdcm::IOD::AddIODEntry(const IODEntry &iode) ";

%feature("docstring")  gdcm::IOD::Clear "void gdcm::IOD::Clear() ";

%feature("docstring")  gdcm::IOD::GetIODEntry "const IODEntry&
gdcm::IOD::GetIODEntry(unsigned int idx) const ";

%feature("docstring")  gdcm::IOD::GetNumberOfIODs "unsigned int
gdcm::IOD::GetNumberOfIODs() const ";

%feature("docstring")  gdcm::IOD::IOD "gdcm::IOD::IOD() ";


// File: classgdcm_1_1IODEntry.xml
%feature("docstring") gdcm::IODEntry "

Class for representing a IODEntry.

A.1.3 IOD Module Table and Functional Group Macro Table This Section
of each IOD defines in a tabular form the Modules comprising the IOD.
The following information must be specified for each Module in the
table: The name of the Module or Functional Group

A reference to the Section in Annex C which defines the Module or
Functional Group

The usage of the Module or Functional Group; whether it is:

Mandatory (see A.1.3.1) , abbreviated M

Conditional (see A.1.3.2) , abbreviated C

User Option (see A.1.3.3) , abbreviated U The Modules referenced are
defined in Annex C. A.1.3.1 MANDATORY MODULES For each IOD, Mandatory
Modules shall be supported per the definitions, semantics and
requirements defined in Annex C. PS 3.3 - 2008 Page 96

Standard - A.1.3.2 CONDITIONAL MODULES Conditional Modules are
Mandatory Modules if specific conditions are met. If the specified
conditions are not met, this Module shall not be supported; that is,
no information defined in that Module shall be sent. A.1.3.3 USER
OPTION MODULES User Option Modules may or may not be supported. If an
optional Module is supported, the Attribute Types specified in the
Modules in Annex C shall be supported.

See:   DictEntry

C++ includes: gdcmIODEntry.h ";

%feature("docstring")  gdcm::IODEntry::GetIE "const char*
gdcm::IODEntry::GetIE() const ";

%feature("docstring")  gdcm::IODEntry::GetName "const char*
gdcm::IODEntry::GetName() const ";

%feature("docstring")  gdcm::IODEntry::GetRef "const char*
gdcm::IODEntry::GetRef() const ";

%feature("docstring")  gdcm::IODEntry::GetUsage "const char*
gdcm::IODEntry::GetUsage() const ";

%feature("docstring")  gdcm::IODEntry::GetUsageType "UsageType
gdcm::IODEntry::GetUsageType() const ";

%feature("docstring")  gdcm::IODEntry::IODEntry "gdcm::IODEntry::IODEntry(const char *name=\"\", const char *ref=\"\",
const char *usage=\"\") ";

%feature("docstring")  gdcm::IODEntry::SetIE "void
gdcm::IODEntry::SetIE(const char *ie) ";

%feature("docstring")  gdcm::IODEntry::SetName "void
gdcm::IODEntry::SetName(const char *name) ";

%feature("docstring")  gdcm::IODEntry::SetRef "void
gdcm::IODEntry::SetRef(const char *ref) ";

%feature("docstring")  gdcm::IODEntry::SetUsage "void
gdcm::IODEntry::SetUsage(const char *usage) ";


// File: classgdcm_1_1IODs.xml
%feature("docstring") gdcm::IODs "

Class for representing a IODs.

bla

See:   IOD

C++ includes: gdcmIODs.h ";

%feature("docstring")  gdcm::IODs::AddIOD "void
gdcm::IODs::AddIOD(const char *name, const IOD &module) ";

%feature("docstring")  gdcm::IODs::Clear "void gdcm::IODs::Clear() ";

%feature("docstring")  gdcm::IODs::GetIOD "const IOD&
gdcm::IODs::GetIOD(const char *name) const ";

%feature("docstring")  gdcm::IODs::IODs "gdcm::IODs::IODs() ";


// File: classstd_1_1ios.xml
%feature("docstring") std::ios "

STL class. ";


// File: classstd_1_1ios__base.xml
%feature("docstring") std::ios_base "

STL class. ";


// File: classstd_1_1ios__base_1_1failure.xml
%feature("docstring") std::ios_base::failure "

STL class. ";


// File: classgdcm_1_1IPPSorter.xml
%feature("docstring") gdcm::IPPSorter "

IPPSorter Implement a simple Image Position ( Patient) sorter, along
the Image Orientation ( Patient) direction. This algorithm does NOT
support duplicate and will FAIL in case of duplicate IPP.

WARNING:  See special note for SetZSpacingTolerance when computing the
ZSpacing from the IPP of each DICOM files (default tolerance for
consistant spacing is: 1e-6mm)

C++ includes: gdcmIPPSorter.h ";

%feature("docstring")  gdcm::IPPSorter::GetZSpacing "double
gdcm::IPPSorter::GetZSpacing() const

Read-only function to provide access to the computed value for the
Z-Spacing The ComputeZSpacing must have been set to true before
execution of sort algorithm Z-Spacing will be 0 on 2 occsasions: 1.
Sorting simply failed, potentially duplicate IPP => ZSpacing = 0 2.
ZSpacing could not be computed (Z-Spacing is not constant, or
ZTolerance is too low) ";

%feature("docstring")  gdcm::IPPSorter::GetZSpacingTolerance "double
gdcm::IPPSorter::GetZSpacingTolerance() const ";

%feature("docstring")  gdcm::IPPSorter::IPPSorter "gdcm::IPPSorter::IPPSorter() ";

%feature("docstring")  gdcm::IPPSorter::SetComputeZSpacing "void
gdcm::IPPSorter::SetComputeZSpacing(bool b)

Functions related to Z-Spacing computation Set to true when sort
algorithm should also perform a regular Z-Spacing computation using
the Image Position ( Patient) Potential reason for failure: 1. ALL
slices are taken into account, if one slice if missing then ZSpacing
will be set to 0 since the spacing will not be found to be regular
along the Series ";

%feature("docstring")  gdcm::IPPSorter::SetZSpacingTolerance "void
gdcm::IPPSorter::SetZSpacingTolerance(double tol)

2. Another reason for failure is that that Z-Spacing is only slightly
changing (eg 1e-3) along the serie, a human can determine that this is
ok and change the tolerance from its default value: 1e-6 ";

%feature("docstring")  gdcm::IPPSorter::Sort "virtual bool
gdcm::IPPSorter::Sort(std::vector< std::string > const &filenames)

Main entry point to the sorter. It will execute the filter, option
should be set before running this function (SetZSpacingTolerance, ...)
Return value indicate if sorting could be achived. Warning this does
*NOT* imply that spacing is consistant, it only means the file are
sorted according to IPP You should check if ZSpacing is 0 or not to
deduce if file are actually a 3D volume ";

%feature("docstring")  gdcm::IPPSorter::~IPPSorter "gdcm::IPPSorter::~IPPSorter() ";


// File: classstd_1_1istream.xml
%feature("docstring") std::istream "

STL class. ";


// File: classstd_1_1istringstream.xml
%feature("docstring") std::istringstream "

STL class. ";


// File: classgdcm_1_1Item.xml
%feature("docstring") gdcm::Item "

Class to represent an Item A component of the value of a Data Element
that is of Value Representation Sequence of Items. An Item contains a
Data Set . See PS 3.5 7.5.1 Item Encoding Rules Each Item of a Data
Element of VR SQ shall be encoded as a DICOM Standart Data Element
with a specific Data Element Tag of Value (FFFE,E000). The Item Tag is
followed by a 4 byte Item Length field encoded in one of the following
two ways Explicit/ Implicit.

ITEM: A component of the Value of a Data Element that is of Value
Representation Sequence of Items. An Item contains a Data Set.

C++ includes: gdcmItem.h ";

%feature("docstring")  gdcm::Item::Clear "void gdcm::Item::Clear() ";

%feature("docstring")  gdcm::Item::GetDataElement "const DataElement&
gdcm::Item::GetDataElement(const Tag &t) const ";

%feature("docstring")  gdcm::Item::GetLength "VL
gdcm::Item::GetLength() const ";

%feature("docstring")  gdcm::Item::GetNestedDataSet "DataSet&
gdcm::Item::GetNestedDataSet() ";

%feature("docstring")  gdcm::Item::GetNestedDataSet "const DataSet&
gdcm::Item::GetNestedDataSet() const ";

%feature("docstring")  gdcm::Item::InsertDataElement "void
gdcm::Item::InsertDataElement(const DataElement &de) ";

%feature("docstring")  gdcm::Item::Item "gdcm::Item::Item(Item const
&val) ";

%feature("docstring")  gdcm::Item::Item "gdcm::Item::Item(const Tag
&t=Tag(0), VL const &vl=0) ";

%feature("docstring")  gdcm::Item::Read "std::istream&
gdcm::Item::Read(std::istream &is) ";

%feature("docstring")  gdcm::Item::SetNestedDataSet "void
gdcm::Item::SetNestedDataSet(const DataSet &nested) ";

%feature("docstring")  gdcm::Item::Write "const std::ostream&
gdcm::Item::Write(std::ostream &os) const ";


// File: classgdcm_1_1JPEG12Codec.xml
%feature("docstring") gdcm::JPEG12Codec "

Class to do JPEG 12bits (lossy & lossless).

internal class

C++ includes: gdcmJPEG12Codec.h ";

%feature("docstring")  gdcm::JPEG12Codec::Decode "bool
gdcm::JPEG12Codec::Decode(std::istream &is, std::ostream &os) ";

%feature("docstring")  gdcm::JPEG12Codec::GetHeaderInfo "bool
gdcm::JPEG12Codec::GetHeaderInfo(std::istream &is, TransferSyntax &ts)
";

%feature("docstring")  gdcm::JPEG12Codec::InternalCode "bool
gdcm::JPEG12Codec::InternalCode(const char *input, unsigned long len,
std::ostream &os) ";

%feature("docstring")  gdcm::JPEG12Codec::JPEG12Codec "gdcm::JPEG12Codec::JPEG12Codec() ";

%feature("docstring")  gdcm::JPEG12Codec::~JPEG12Codec "gdcm::JPEG12Codec::~JPEG12Codec() ";


// File: classgdcm_1_1JPEG16Codec.xml
%feature("docstring") gdcm::JPEG16Codec "

Class to do JPEG 16bits (lossless).

internal class

C++ includes: gdcmJPEG16Codec.h ";

%feature("docstring")  gdcm::JPEG16Codec::Decode "bool
gdcm::JPEG16Codec::Decode(std::istream &is, std::ostream &os) ";

%feature("docstring")  gdcm::JPEG16Codec::GetHeaderInfo "bool
gdcm::JPEG16Codec::GetHeaderInfo(std::istream &is, TransferSyntax &ts)
";

%feature("docstring")  gdcm::JPEG16Codec::InternalCode "bool
gdcm::JPEG16Codec::InternalCode(const char *input, unsigned long len,
std::ostream &os) ";

%feature("docstring")  gdcm::JPEG16Codec::JPEG16Codec "gdcm::JPEG16Codec::JPEG16Codec() ";

%feature("docstring")  gdcm::JPEG16Codec::~JPEG16Codec "gdcm::JPEG16Codec::~JPEG16Codec() ";


// File: classgdcm_1_1JPEG2000Codec.xml
%feature("docstring") gdcm::JPEG2000Codec "

Class to do JPEG 2000.

the class will produce JPC (JPEG 2000 codestream), since some private
implementor are using full jp2 file the decoder tolerate jp2 input
this is an implementation of an ImageCodec

C++ includes: gdcmJPEG2000Codec.h ";

%feature("docstring")  gdcm::JPEG2000Codec::CanCode "bool
gdcm::JPEG2000Codec::CanCode(TransferSyntax const &ts) const

Return whether this coder support this transfer syntax (can code it).
";

%feature("docstring")  gdcm::JPEG2000Codec::CanDecode "bool
gdcm::JPEG2000Codec::CanDecode(TransferSyntax const &ts) const

Return whether this decoder support this transfer syntax (can decode
it). ";

%feature("docstring")  gdcm::JPEG2000Codec::Code "bool
gdcm::JPEG2000Codec::Code(DataElement const &in, DataElement &out)

Code. ";

%feature("docstring")  gdcm::JPEG2000Codec::Decode "bool
gdcm::JPEG2000Codec::Decode(DataElement const &is, DataElement &os)

Decode. ";

%feature("docstring")  gdcm::JPEG2000Codec::GetHeaderInfo "virtual
bool gdcm::JPEG2000Codec::GetHeaderInfo(std::istream &is,
TransferSyntax &ts) ";

%feature("docstring")  gdcm::JPEG2000Codec::JPEG2000Codec "gdcm::JPEG2000Codec::JPEG2000Codec() ";

%feature("docstring")  gdcm::JPEG2000Codec::SetNumberOfDimensions "void gdcm::JPEG2000Codec::SetNumberOfDimensions(unsigned int dim) ";

%feature("docstring")  gdcm::JPEG2000Codec::~JPEG2000Codec "gdcm::JPEG2000Codec::~JPEG2000Codec() ";


// File: classgdcm_1_1JPEG8Codec.xml
%feature("docstring") gdcm::JPEG8Codec "

Class to do JPEG 8bits (lossy & lossless).

internal class

C++ includes: gdcmJPEG8Codec.h ";

%feature("docstring")  gdcm::JPEG8Codec::Decode "bool
gdcm::JPEG8Codec::Decode(std::istream &is, std::ostream &os) ";

%feature("docstring")  gdcm::JPEG8Codec::GetHeaderInfo "bool
gdcm::JPEG8Codec::GetHeaderInfo(std::istream &is, TransferSyntax &ts)
";

%feature("docstring")  gdcm::JPEG8Codec::InternalCode "bool
gdcm::JPEG8Codec::InternalCode(const char *input, unsigned long len,
std::ostream &os) ";

%feature("docstring")  gdcm::JPEG8Codec::JPEG8Codec "gdcm::JPEG8Codec::JPEG8Codec() ";

%feature("docstring")  gdcm::JPEG8Codec::~JPEG8Codec "gdcm::JPEG8Codec::~JPEG8Codec() ";


// File: classgdcm_1_1JPEGCodec.xml
%feature("docstring") gdcm::JPEGCodec "

JPEG codec Class to do JPEG (8bits, 12bits, 16bits lossy & lossless).
It redispatch in between the different codec implementation:
gdcm::JPEG8Codec, gdcm::JPEG12Codec & gdcm::JPEG16Codec It also
support inconsistency in between DICOM header and JPEG compressed
stream ImageCodec implementation for the JPEG case.

Things you should know if you ever want to dive into DICOM/JPEG world
(among other):

http://groups.google.com/group/comp.protocols.dicom/browse_thread/thread/625e46919f2080e1

http://groups.google.com/group/comp.protocols.dicom/browse_thread/thread/75fdfccc65a6243

http://groups.google.com/group/comp.protocols.dicom/browse_thread/thread/2d525ef6a2f093ed

http://groups.google.com/group/comp.protocols.dicom/browse_thread/thread/6b93af410f8c921f

C++ includes: gdcmJPEGCodec.h ";

%feature("docstring")  gdcm::JPEGCodec::CanCode "bool
gdcm::JPEGCodec::CanCode(TransferSyntax const &ts) const

Return whether this coder support this transfer syntax (can code it).
";

%feature("docstring")  gdcm::JPEGCodec::CanDecode "bool
gdcm::JPEGCodec::CanDecode(TransferSyntax const &ts) const

Return whether this decoder support this transfer syntax (can decode
it). ";

%feature("docstring")  gdcm::JPEGCodec::Code "bool
gdcm::JPEGCodec::Code(DataElement const &in, DataElement &out)

Compress into JPEG. ";

%feature("docstring")  gdcm::JPEGCodec::ComputeOffsetTable "void
gdcm::JPEGCodec::ComputeOffsetTable(bool b)

Compute the offset table:. ";

%feature("docstring")  gdcm::JPEGCodec::Decode "bool
gdcm::JPEGCodec::Decode(DataElement const &is, DataElement &os)

Decode. ";

%feature("docstring")  gdcm::JPEGCodec::GetHeaderInfo "virtual bool
gdcm::JPEGCodec::GetHeaderInfo(std::istream &is, TransferSyntax &ts)
";

%feature("docstring")  gdcm::JPEGCodec::JPEGCodec "gdcm::JPEGCodec::JPEGCodec() ";

%feature("docstring")  gdcm::JPEGCodec::SetPixelFormat "void
gdcm::JPEGCodec::SetPixelFormat(PixelFormat const &pf) ";

%feature("docstring")  gdcm::JPEGCodec::~JPEGCodec "gdcm::JPEGCodec::~JPEGCodec() ";


// File: classgdcm_1_1JPEGLSCodec.xml
%feature("docstring") gdcm::JPEGLSCodec "

JPEG-LS.

codec that implement the JPEG-LS compression this is an implement of
ImageCodec for JPEG-LS

C++ includes: gdcmJPEGLSCodec.h ";

%feature("docstring")  gdcm::JPEGLSCodec::CanCode "bool
gdcm::JPEGLSCodec::CanCode(TransferSyntax const &ts) const

Return whether this coder support this transfer syntax (can code it).
";

%feature("docstring")  gdcm::JPEGLSCodec::CanDecode "bool
gdcm::JPEGLSCodec::CanDecode(TransferSyntax const &ts) const

Return whether this decoder support this transfer syntax (can decode
it). ";

%feature("docstring")  gdcm::JPEGLSCodec::Code "bool
gdcm::JPEGLSCodec::Code(DataElement const &in, DataElement &out)

Code. ";

%feature("docstring")  gdcm::JPEGLSCodec::Decode "bool
gdcm::JPEGLSCodec::Decode(DataElement const &is, DataElement &os)

Decode. ";

%feature("docstring")  gdcm::JPEGLSCodec::GetBufferLength "unsigned
long gdcm::JPEGLSCodec::GetBufferLength() const ";

%feature("docstring")  gdcm::JPEGLSCodec::JPEGLSCodec "gdcm::JPEGLSCodec::JPEGLSCodec() ";

%feature("docstring")  gdcm::JPEGLSCodec::SetBufferLength "void
gdcm::JPEGLSCodec::SetBufferLength(unsigned long l) ";

%feature("docstring")  gdcm::JPEGLSCodec::~JPEGLSCodec "gdcm::JPEGLSCodec::~JPEGLSCodec() ";


// File: classstd_1_1length__error.xml
%feature("docstring") std::length_error "

STL class. ";


// File: classstd_1_1list.xml
%feature("docstring") std::list "

STL class. ";


// File: classstd_1_1list_1_1const__iterator.xml
%feature("docstring") std::list::const_iterator "

STL iterator class. ";


// File: classstd_1_1list_1_1const__reverse__iterator.xml
%feature("docstring") std::list::const_reverse_iterator "

STL iterator class. ";


// File: classstd_1_1list_1_1iterator.xml
%feature("docstring") std::list::iterator "

STL iterator class. ";


// File: classstd_1_1list_1_1reverse__iterator.xml
%feature("docstring") std::list::reverse_iterator "

STL iterator class. ";


// File: classgdcm_1_1LO.xml
%feature("docstring") gdcm::LO "

LO.

TODO

C++ includes: gdcmLO.h ";

%feature("docstring")  gdcm::LO::IsValid "bool gdcm::LO::IsValid()
const ";

%feature("docstring")  gdcm::LO::LO "gdcm::LO::LO(const Superclass
&s, size_type pos=0, size_type n=npos) ";

%feature("docstring")  gdcm::LO::LO "gdcm::LO::LO(const value_type
*s, size_type n) ";

%feature("docstring")  gdcm::LO::LO "gdcm::LO::LO(const value_type
*s) ";

%feature("docstring")  gdcm::LO::LO "gdcm::LO::LO() ";


// File: classstd_1_1logic__error.xml
%feature("docstring") std::logic_error "

STL class. ";


// File: classgdcm_1_1LookupTable.xml
%feature("docstring") gdcm::LookupTable "

LookupTable class.

C++ includes: gdcmLookupTable.h ";

%feature("docstring")  gdcm::LookupTable::Allocate "void
gdcm::LookupTable::Allocate(unsigned short bitsample=8)

Allocate the LUT. ";

%feature("docstring")  gdcm::LookupTable::Clear "void
gdcm::LookupTable::Clear()

Clear the LUT. ";

%feature("docstring")  gdcm::LookupTable::Decode "void
gdcm::LookupTable::Decode(std::istream &is, std::ostream &os) const

Decode the LUT. ";

%feature("docstring")  gdcm::LookupTable::GetBitSample "unsigned
short gdcm::LookupTable::GetBitSample() const

return the bit sample ";

%feature("docstring")  gdcm::LookupTable::GetBufferAsRGBA "bool
gdcm::LookupTable::GetBufferAsRGBA(unsigned char *rgba) const

return the LUT as RGBA buffer ";

%feature("docstring")  gdcm::LookupTable::GetLUT "void
gdcm::LookupTable::GetLUT(LookupTableType type, unsigned char *array,
unsigned int &length) const ";

%feature("docstring")  gdcm::LookupTable::GetLUTDescriptor "void
gdcm::LookupTable::GetLUTDescriptor(LookupTableType type, unsigned
short &length, unsigned short &subscript, unsigned short &bitsize)
const ";

%feature("docstring")  gdcm::LookupTable::GetLUTLength "unsigned int
gdcm::LookupTable::GetLUTLength(LookupTableType type) const ";

%feature("docstring")  gdcm::LookupTable::GetPointer "const unsigned
char* gdcm::LookupTable::GetPointer() const

return a raw pointer to the LUT ";

%feature("docstring")  gdcm::LookupTable::InitializeBlueLUT "void
gdcm::LookupTable::InitializeBlueLUT(unsigned short length, unsigned
short subscript, unsigned short bitsize) ";

%feature("docstring")  gdcm::LookupTable::InitializeGreenLUT "void
gdcm::LookupTable::InitializeGreenLUT(unsigned short length, unsigned
short subscript, unsigned short bitsize) ";

%feature("docstring")  gdcm::LookupTable::InitializeLUT "void
gdcm::LookupTable::InitializeLUT(LookupTableType type, unsigned short
length, unsigned short subscript, unsigned short bitsize)

Generic interface:. ";

%feature("docstring")  gdcm::LookupTable::InitializeRedLUT "void
gdcm::LookupTable::InitializeRedLUT(unsigned short length, unsigned
short subscript, unsigned short bitsize)

RED / GREEN / BLUE specific:. ";

%feature("docstring")  gdcm::LookupTable::LookupTable "gdcm::LookupTable::LookupTable(LookupTable const &lut) ";

%feature("docstring")  gdcm::LookupTable::LookupTable "gdcm::LookupTable::LookupTable() ";

%feature("docstring")  gdcm::LookupTable::Print "void
gdcm::LookupTable::Print(std::ostream &) const ";

%feature("docstring")  gdcm::LookupTable::SetBlueLUT "void
gdcm::LookupTable::SetBlueLUT(const unsigned char *blue, unsigned int
length) ";

%feature("docstring")  gdcm::LookupTable::SetGreenLUT "void
gdcm::LookupTable::SetGreenLUT(const unsigned char *green, unsigned
int length) ";

%feature("docstring")  gdcm::LookupTable::SetLUT "virtual void
gdcm::LookupTable::SetLUT(LookupTableType type, const unsigned char
*array, unsigned int length) ";

%feature("docstring")  gdcm::LookupTable::SetRedLUT "void
gdcm::LookupTable::SetRedLUT(const unsigned char *red, unsigned int
length) ";

%feature("docstring")  gdcm::LookupTable::WriteBufferAsRGBA "bool
gdcm::LookupTable::WriteBufferAsRGBA(const unsigned char *rgba)

Write the LUT as RGBA. ";

%feature("docstring")  gdcm::LookupTable::~LookupTable "gdcm::LookupTable::~LookupTable() ";


// File: classstd_1_1map.xml
%feature("docstring") std::map "

STL class. ";


// File: classstd_1_1map_1_1const__iterator.xml
%feature("docstring") std::map::const_iterator "

STL iterator class. ";


// File: classstd_1_1map_1_1const__reverse__iterator.xml
%feature("docstring") std::map::const_reverse_iterator "

STL iterator class. ";


// File: classstd_1_1map_1_1iterator.xml
%feature("docstring") std::map::iterator "

STL iterator class. ";


// File: classstd_1_1map_1_1reverse__iterator.xml
%feature("docstring") std::map::reverse_iterator "

STL iterator class. ";


// File: classgdcm_1_1MediaStorage.xml
%feature("docstring") gdcm::MediaStorage "

MediaStorage.

FIXME There should not be any notion of Image and/or PDF at that point
Only the codec can answer yes I support this Media Storage or not...
For instance an ImageCodec will answer yes to most of them while a
PDFCodec will answer only for the Encaplusated PDF

C++ includes: gdcmMediaStorage.h ";

%feature("docstring")  gdcm::MediaStorage::GetModality "const char*
gdcm::MediaStorage::GetModality() const ";

%feature("docstring")  gdcm::MediaStorage::GetString "const char*
gdcm::MediaStorage::GetString() const ";

%feature("docstring")  gdcm::MediaStorage::GuessFromModality "void
gdcm::MediaStorage::GuessFromModality(const char *modality, unsigned
int dimension=2) ";

%feature("docstring")  gdcm::MediaStorage::IsUndefined "bool
gdcm::MediaStorage::IsUndefined() const ";

%feature("docstring")  gdcm::MediaStorage::MediaStorage "gdcm::MediaStorage::MediaStorage(MSType type=MS_END) ";

%feature("docstring")  gdcm::MediaStorage::SetFromDataSet "void
gdcm::MediaStorage::SetFromDataSet(DataSet const &ds, bool
guess=false) ";

%feature("docstring")  gdcm::MediaStorage::SetFromFile "void
gdcm::MediaStorage::SetFromFile(File const &file) ";

%feature("docstring")  gdcm::MediaStorage::SetFromHeader "void
gdcm::MediaStorage::SetFromHeader(FileMetaInformation const &fmi) ";

%feature("docstring")  gdcm::MediaStorage::SetFromModality "void
gdcm::MediaStorage::SetFromModality(DataSet const &ds) ";

%feature("docstring")  gdcm::MediaStorage::SetFromSourceImageSequence
"void gdcm::MediaStorage::SetFromSourceImageSequence(DataSet const
&ds) ";


// File: classgdcm_1_1Module.xml
%feature("docstring") gdcm::Module "

Class for representing a Module.

bla Module: A set of Attributes within an Information Entity or
Normalized IOD which are logically related to each other.

See:   Dict

C++ includes: gdcmModule.h ";

%feature("docstring")  gdcm::Module::AddModuleEntry "void
gdcm::Module::AddModuleEntry(const Tag &tag, const ModuleEntry
&module) ";

%feature("docstring")  gdcm::Module::Begin "Iterator
gdcm::Module::Begin() ";

%feature("docstring")  gdcm::Module::Begin "ConstIterator
gdcm::Module::Begin() const ";

%feature("docstring")  gdcm::Module::Clear "void
gdcm::Module::Clear() ";

%feature("docstring")  gdcm::Module::End "Iterator
gdcm::Module::End() ";

%feature("docstring")  gdcm::Module::End "ConstIterator
gdcm::Module::End() const ";

%feature("docstring")  gdcm::Module::GetModuleEntry "const
ModuleEntry& gdcm::Module::GetModuleEntry(const Tag &tag) const ";

%feature("docstring")  gdcm::Module::GetName "const char*
gdcm::Module::GetName() const ";

%feature("docstring")  gdcm::Module::Module "gdcm::Module::Module()
";

%feature("docstring")  gdcm::Module::SetName "void
gdcm::Module::SetName(const char *name) ";

%feature("docstring")  gdcm::Module::Verify "bool
gdcm::Module::Verify(const DataSet &ds) const ";


// File: classgdcm_1_1ModuleEntry.xml
%feature("docstring") gdcm::ModuleEntry "

Class for representing a ModuleEntry.

bla

See:   DictEntry

C++ includes: gdcmModuleEntry.h ";

%feature("docstring")  gdcm::ModuleEntry::GetDescription "const
Description& gdcm::ModuleEntry::GetDescription() const ";

%feature("docstring")  gdcm::ModuleEntry::GetName "const char*
gdcm::ModuleEntry::GetName() const ";

%feature("docstring")  gdcm::ModuleEntry::GetType "const Type&
gdcm::ModuleEntry::GetType() const ";

%feature("docstring")  gdcm::ModuleEntry::ModuleEntry "gdcm::ModuleEntry::ModuleEntry(const char *name=\"\", const char
*type=\"3\", const char *description=\"\") ";

%feature("docstring")  gdcm::ModuleEntry::SetDescription "void
gdcm::ModuleEntry::SetDescription(const char *d) ";

%feature("docstring")  gdcm::ModuleEntry::SetName "void
gdcm::ModuleEntry::SetName(const char *name) ";

%feature("docstring")  gdcm::ModuleEntry::SetType "void
gdcm::ModuleEntry::SetType(const Type &type) ";

%feature("docstring")  gdcm::ModuleEntry::~ModuleEntry "virtual
gdcm::ModuleEntry::~ModuleEntry() ";


// File: classgdcm_1_1Modules.xml
%feature("docstring") gdcm::Modules "

Class for representing a Modules.

bla

See:   Module

C++ includes: gdcmModules.h ";

%feature("docstring")  gdcm::Modules::AddModule "void
gdcm::Modules::AddModule(const char *ref, const Module &module) ";

%feature("docstring")  gdcm::Modules::Clear "void
gdcm::Modules::Clear() ";

%feature("docstring")  gdcm::Modules::GetModule "const Module&
gdcm::Modules::GetModule(const char *name) const ";

%feature("docstring")  gdcm::Modules::IsEmpty "bool
gdcm::Modules::IsEmpty() const ";

%feature("docstring")  gdcm::Modules::Modules "gdcm::Modules::Modules() ";


// File: classstd_1_1multimap.xml
%feature("docstring") std::multimap "

STL class. ";


// File: classstd_1_1multimap_1_1const__iterator.xml
%feature("docstring") std::multimap::const_iterator "

STL iterator class. ";


// File: classstd_1_1multimap_1_1const__reverse__iterator.xml
%feature("docstring") std::multimap::const_reverse_iterator "

STL iterator class. ";


// File: classstd_1_1multimap_1_1iterator.xml
%feature("docstring") std::multimap::iterator "

STL iterator class. ";


// File: classstd_1_1multimap_1_1reverse__iterator.xml
%feature("docstring") std::multimap::reverse_iterator "

STL iterator class. ";


// File: classstd_1_1multiset.xml
%feature("docstring") std::multiset "

STL class. ";


// File: classstd_1_1multiset_1_1const__iterator.xml
%feature("docstring") std::multiset::const_iterator "

STL iterator class. ";


// File: classstd_1_1multiset_1_1const__reverse__iterator.xml
%feature("docstring") std::multiset::const_reverse_iterator "

STL iterator class. ";


// File: classstd_1_1multiset_1_1iterator.xml
%feature("docstring") std::multiset::iterator "

STL iterator class. ";


// File: classstd_1_1multiset_1_1reverse__iterator.xml
%feature("docstring") std::multiset::reverse_iterator "

STL iterator class. ";


// File: classgdcm_1_1NestedModuleEntries.xml
%feature("docstring") gdcm::NestedModuleEntries "

Class for representing a NestedModuleEntries.

bla

See:   ModuleEntry

C++ includes: gdcmNestedModuleEntries.h ";

%feature("docstring")  gdcm::NestedModuleEntries::AddModuleEntry "void gdcm::NestedModuleEntries::AddModuleEntry(const ModuleEntry &me)
";

%feature("docstring")  gdcm::NestedModuleEntries::GetModuleEntry "ModuleEntry& gdcm::NestedModuleEntries::GetModuleEntry(unsigned int
idx) ";

%feature("docstring")  gdcm::NestedModuleEntries::GetModuleEntry "const ModuleEntry& gdcm::NestedModuleEntries::GetModuleEntry(unsigned
int idx) const ";

%feature("docstring")
gdcm::NestedModuleEntries::GetNumberOfModuleEntries "unsigned int
gdcm::NestedModuleEntries::GetNumberOfModuleEntries() ";

%feature("docstring")  gdcm::NestedModuleEntries::NestedModuleEntries
"gdcm::NestedModuleEntries::NestedModuleEntries(const char
*name=\"\", const char *type=\"3\", const char *description=\"\") ";


// File: classgdcm_1_1Object.xml
%feature("docstring") gdcm::Object "

Object.

main superclass for object that want to use SmartPointer invasive ref
counting system

See:   SmartPointer

C++ includes: gdcmObject.h ";

%feature("docstring")  gdcm::Object::Object "gdcm::Object::Object(const Object &)

Special requirement for copy/cstor, assigment operator. ";

%feature("docstring")  gdcm::Object::Object "gdcm::Object::Object()
";

%feature("docstring")  gdcm::Object::Print "virtual void
gdcm::Object::Print(std::ostream &) const ";

%feature("docstring")  gdcm::Object::~Object "virtual
gdcm::Object::~Object() ";


// File: classstd_1_1ofstream.xml
%feature("docstring") std::ofstream "

STL class. ";


// File: classgdcm_1_1Orientation.xml
%feature("docstring") gdcm::Orientation "

class to handle Orientation

C++ includes: gdcmOrientation.h ";

%feature("docstring")  gdcm::Orientation::Orientation "gdcm::Orientation::Orientation() ";

%feature("docstring")  gdcm::Orientation::Print "void
gdcm::Orientation::Print(std::ostream &) const

Print. ";

%feature("docstring")  gdcm::Orientation::~Orientation "gdcm::Orientation::~Orientation() ";


// File: classstd_1_1ostream.xml
%feature("docstring") std::ostream "

STL class. ";


// File: classstd_1_1ostringstream.xml
%feature("docstring") std::ostringstream "

STL class. ";


// File: classstd_1_1out__of__range.xml
%feature("docstring") std::out_of_range "

STL class. ";


// File: classstd_1_1overflow__error.xml
%feature("docstring") std::overflow_error "

STL class. ";


// File: classgdcm_1_1Overlay.xml
%feature("docstring") gdcm::Overlay "

Overlay class.

see AreOverlaysInPixelData Todo Is there actually any way to recognize
an overlay ? On images with multiple overlay I do not see any way to
differenciate them (other than the group tag). Example:

C++ includes: gdcmOverlay.h ";

%feature("docstring")  gdcm::Overlay::Decode "void
gdcm::Overlay::Decode(std::istream &is, std::ostream &os) ";

%feature("docstring")  gdcm::Overlay::Decompress "void
gdcm::Overlay::Decompress(std::ostream &os) const ";

%feature("docstring")  gdcm::Overlay::GetBitPosition "unsigned short
gdcm::Overlay::GetBitPosition() const

return bit position ";

%feature("docstring")  gdcm::Overlay::GetBitsAllocated "unsigned
short gdcm::Overlay::GetBitsAllocated() const

return bits allocated ";

%feature("docstring")  gdcm::Overlay::GetBuffer "bool
gdcm::Overlay::GetBuffer(char *buffer) const ";

%feature("docstring")  gdcm::Overlay::GetColumns "unsigned short
gdcm::Overlay::GetColumns() const

get columns ";

%feature("docstring")  gdcm::Overlay::GetDescription "const char*
gdcm::Overlay::GetDescription() const

get description ";

%feature("docstring")  gdcm::Overlay::GetGroup "unsigned short
gdcm::Overlay::GetGroup() const

Get Group number. ";

%feature("docstring")  gdcm::Overlay::GetOrigin "const signed short*
gdcm::Overlay::GetOrigin() const

get origin ";

%feature("docstring")  gdcm::Overlay::GetOverlayData "const
ByteValue& gdcm::Overlay::GetOverlayData() const ";

%feature("docstring")  gdcm::Overlay::GetRows "unsigned short
gdcm::Overlay::GetRows() const

get rows ";

%feature("docstring")  gdcm::Overlay::GetType "const char*
gdcm::Overlay::GetType() const

get type ";

%feature("docstring")  gdcm::Overlay::GetUnpackBuffer "bool
gdcm::Overlay::GetUnpackBuffer(unsigned char *buffer) const ";

%feature("docstring")  gdcm::Overlay::GrabOverlayFromPixelData "void
gdcm::Overlay::GrabOverlayFromPixelData(DataSet const &ds) ";

%feature("docstring")  gdcm::Overlay::IsEmpty "bool
gdcm::Overlay::IsEmpty() const ";

%feature("docstring")  gdcm::Overlay::IsInPixelData "void
gdcm::Overlay::IsInPixelData(bool b) ";

%feature("docstring")  gdcm::Overlay::IsInPixelData "bool
gdcm::Overlay::IsInPixelData() const ";

%feature("docstring")  gdcm::Overlay::IsZero "bool
gdcm::Overlay::IsZero() const

return true if all bits are set to 0 ";

%feature("docstring")  gdcm::Overlay::Overlay "gdcm::Overlay::Overlay(Overlay const &ov) ";

%feature("docstring")  gdcm::Overlay::Overlay "gdcm::Overlay::Overlay() ";

%feature("docstring")  gdcm::Overlay::Print "void
gdcm::Overlay::Print(std::ostream &) const

Print. ";

%feature("docstring")  gdcm::Overlay::SetBitPosition "void
gdcm::Overlay::SetBitPosition(unsigned short bitposition)

set bit position ";

%feature("docstring")  gdcm::Overlay::SetBitsAllocated "void
gdcm::Overlay::SetBitsAllocated(unsigned short bitsallocated)

set bits allocated ";

%feature("docstring")  gdcm::Overlay::SetColumns "void
gdcm::Overlay::SetColumns(unsigned short columns)

set columns ";

%feature("docstring")  gdcm::Overlay::SetDescription "void
gdcm::Overlay::SetDescription(const char *description)

set description ";

%feature("docstring")  gdcm::Overlay::SetFrameOrigin "void
gdcm::Overlay::SetFrameOrigin(unsigned short frameorigin)

set frame origin ";

%feature("docstring")  gdcm::Overlay::SetGroup "void
gdcm::Overlay::SetGroup(unsigned short group)

Set Group number. ";

%feature("docstring")  gdcm::Overlay::SetNumberOfFrames "void
gdcm::Overlay::SetNumberOfFrames(unsigned int numberofframes)

set number of frames ";

%feature("docstring")  gdcm::Overlay::SetOrigin "void
gdcm::Overlay::SetOrigin(const signed short *origin)

set origin ";

%feature("docstring")  gdcm::Overlay::SetOverlay "void
gdcm::Overlay::SetOverlay(const char *array, unsigned int length)

set overlay from byte array + length ";

%feature("docstring")  gdcm::Overlay::SetRows "void
gdcm::Overlay::SetRows(unsigned short rows)

set rows ";

%feature("docstring")  gdcm::Overlay::SetType "void
gdcm::Overlay::SetType(const char *type)

set type ";

%feature("docstring")  gdcm::Overlay::Update "void
gdcm::Overlay::Update(const DataElement &de)

Update overlay from data element de:. ";

%feature("docstring")  gdcm::Overlay::~Overlay "gdcm::Overlay::~Overlay() ";


// File: classgdcm_1_1ParseException.xml
%feature("docstring") gdcm::ParseException "

Standard exception handling object.

C++ includes: gdcmParseException.h ";

%feature("docstring")  gdcm::ParseException::GetLastElement "const
DataElement& gdcm::ParseException::GetLastElement() const ";

%feature("docstring")  gdcm::ParseException::ParseException "gdcm::ParseException::ParseException() ";

%feature("docstring")  gdcm::ParseException::SetLastElement "void
gdcm::ParseException::SetLastElement(DataElement &de)

Equivalence operator. ";

%feature("docstring")  gdcm::ParseException::~ParseException "virtual
gdcm::ParseException::~ParseException()  throw ()";


// File: classgdcm_1_1Parser.xml
%feature("docstring") gdcm::Parser "

Parser ala XML_Parser from expat (SAX).

Detailled description here Simple API for DICOM

C++ includes: gdcmParser.h ";

%feature("docstring")  gdcm::Parser::GetCurrentByteIndex "unsigned
long gdcm::Parser::GetCurrentByteIndex() const ";

%feature("docstring")  gdcm::Parser::GetErrorCode "ErrorType
gdcm::Parser::GetErrorCode() const ";

%feature("docstring")  gdcm::Parser::GetUserData "void*
gdcm::Parser::GetUserData() const ";

%feature("docstring")  gdcm::Parser::Parse "bool
gdcm::Parser::Parse(const char *s, int len, bool isFinal) ";

%feature("docstring")  gdcm::Parser::Parser "gdcm::Parser::Parser()
";

%feature("docstring")  gdcm::Parser::SetElementHandler "void
gdcm::Parser::SetElementHandler(StartElementHandler start,
EndElementHandler end) ";

%feature("docstring")  gdcm::Parser::SetUserData "void
gdcm::Parser::SetUserData(void *userData) ";

%feature("docstring")  gdcm::Parser::~Parser "gdcm::Parser::~Parser()
";


// File: classgdcm_1_1Patient.xml
%feature("docstring") gdcm::Patient "

See PS 3.3 - 2007 DICOM MODEL OF THE REAL-WORLD, p 54.

C++ includes: gdcmPatient.h ";

%feature("docstring")  gdcm::Patient::Patient "gdcm::Patient::Patient() ";


// File: classgdcm_1_1PDBElement.xml
%feature("docstring") gdcm::PDBElement "

Class to represent a PDB Element.

C++ includes: gdcmPDBElement.h ";

%feature("docstring")  gdcm::PDBElement::GetName "const char*
gdcm::PDBElement::GetName() const

Set/Get Name. ";

%feature("docstring")  gdcm::PDBElement::GetValue "const char*
gdcm::PDBElement::GetValue() const

Set/Get Value. ";

%feature("docstring")  gdcm::PDBElement::PDBElement "gdcm::PDBElement::PDBElement() ";

%feature("docstring")  gdcm::PDBElement::SetName "void
gdcm::PDBElement::SetName(const char *name) ";

%feature("docstring")  gdcm::PDBElement::SetValue "void
gdcm::PDBElement::SetValue(const char *value) ";


// File: classgdcm_1_1PDBHeader.xml
%feature("docstring") gdcm::PDBHeader "

Class for PDBHeader.

GEMS MR Image have an Attribute (0025,1b,GEMS_SERS_01) which store the
Acquisition parameter of the MR Image. It is compressed and can
therefore not be used as is. This class de- encapsulated the Protocol
Data Block and allow users to query element by name.

WARNING:  : Everything you do with this code is at your own risk,
since decoding process was not written from specification documents.

: the API of this class might change.

C++ includes: gdcmPDBHeader.h ";

%feature("docstring")  gdcm::PDBHeader::FindPDBElementByName "bool
gdcm::PDBHeader::FindPDBElementByName(const char *name)

Return true if the PDB element matching name is found or not. ";

%feature("docstring")  gdcm::PDBHeader::GetPDBElementByName "const
PDBElement& gdcm::PDBHeader::GetPDBElementByName(const char *name)

Lookup in the PDB header if a PDB element match the name 'name':
WARNING:  Case Sensitive ";

%feature("docstring")  gdcm::PDBHeader::LoadFromDataElement "bool
gdcm::PDBHeader::LoadFromDataElement(DataElement const &de)

Load the PDB Header from a DataElement of a DataSet. ";

%feature("docstring")  gdcm::PDBHeader::PDBHeader "gdcm::PDBHeader::PDBHeader() ";

%feature("docstring")  gdcm::PDBHeader::Print "void
gdcm::PDBHeader::Print(std::ostream &os) const

Print. ";

%feature("docstring")  gdcm::PDBHeader::~PDBHeader "gdcm::PDBHeader::~PDBHeader() ";


// File: classgdcm_1_1PDFCodec.xml
%feature("docstring") gdcm::PDFCodec "

PDFCodec class.

C++ includes: gdcmPDFCodec.h ";

%feature("docstring")  gdcm::PDFCodec::CanCode "bool
gdcm::PDFCodec::CanCode(TransferSyntax const &) const

Return whether this coder support this transfer syntax (can code it).
";

%feature("docstring")  gdcm::PDFCodec::CanDecode "bool
gdcm::PDFCodec::CanDecode(TransferSyntax const &) const

Return whether this decoder support this transfer syntax (can decode
it). ";

%feature("docstring")  gdcm::PDFCodec::Decode "bool
gdcm::PDFCodec::Decode(DataElement const &is, DataElement &os)

Decode. ";

%feature("docstring")  gdcm::PDFCodec::PDFCodec "gdcm::PDFCodec::PDFCodec() ";

%feature("docstring")  gdcm::PDFCodec::~PDFCodec "gdcm::PDFCodec::~PDFCodec() ";


// File: classgdcm_1_1PersonName.xml
%feature("docstring") gdcm::PersonName "

PersonName class.

C++ includes: gdcmPersonName.h ";

%feature("docstring")  gdcm::PersonName::GetMaxLength "unsigned int
gdcm::PersonName::GetMaxLength() const ";

%feature("docstring")  gdcm::PersonName::GetNumberOfComponents "unsigned int gdcm::PersonName::GetNumberOfComponents() const ";

%feature("docstring")  gdcm::PersonName::Print "void
gdcm::PersonName::Print(std::ostream &os) const ";

%feature("docstring")  gdcm::PersonName::SetBlob "void
gdcm::PersonName::SetBlob(const std::vector< char > &v) ";

%feature("docstring")  gdcm::PersonName::SetComponents "void
gdcm::PersonName::SetComponents(const char *components[]) ";

%feature("docstring")  gdcm::PersonName::SetComponents "void
gdcm::PersonName::SetComponents(const char *comp1=\"\", const char
*comp2=\"\", const char *comp3=\"\", const char *comp4=\"\", const
char *comp5=\"\") ";


// File: classgdcm_1_1PhotometricInterpretation.xml
%feature("docstring") gdcm::PhotometricInterpretation "

Class to represent an PhotometricInterpretation.

C++ includes: gdcmPhotometricInterpretation.h ";

%feature("docstring")
gdcm::PhotometricInterpretation::GetSamplesPerPixel "int
gdcm::PhotometricInterpretation::GetSamplesPerPixel() ";

%feature("docstring")
gdcm::PhotometricInterpretation::PhotometricInterpretation "gdcm::PhotometricInterpretation::PhotometricInterpretation(PIType
pi=UNKNOW) ";


// File: classgdcm_1_1PixelFormat.xml
%feature("docstring") gdcm::PixelFormat "

PixelFormat.

By default the Pixel Type will be instanciated with the following
parameters: SamplesPerPixel : 1

BitsAllocated : 8

BitsStored : 8

HighBit : 7

PixelRepresentation : 0

C++ includes: gdcmPixelFormat.h ";

%feature("docstring")  gdcm::PixelFormat::GetBitsAllocated "unsigned
short gdcm::PixelFormat::GetBitsAllocated() const

BitsAllocated. ";

%feature("docstring")  gdcm::PixelFormat::GetBitsStored "unsigned
short gdcm::PixelFormat::GetBitsStored() const

BitsStored. ";

%feature("docstring")  gdcm::PixelFormat::GetHighBit "unsigned short
gdcm::PixelFormat::GetHighBit() const

HighBit. ";

%feature("docstring")  gdcm::PixelFormat::GetMax "int64_t
gdcm::PixelFormat::GetMax() const

return the max possible of the pixel ";

%feature("docstring")  gdcm::PixelFormat::GetMin "int64_t
gdcm::PixelFormat::GetMin() const

return the min possible of the pixel ";

%feature("docstring")  gdcm::PixelFormat::GetPixelRepresentation "unsigned short gdcm::PixelFormat::GetPixelRepresentation() const

PixelRepresentation. ";

%feature("docstring")  gdcm::PixelFormat::GetPixelSize "uint8_t
gdcm::PixelFormat::GetPixelSize() const

return the size of the pixel ";

%feature("docstring")  gdcm::PixelFormat::GetSamplesPerPixel "unsigned short gdcm::PixelFormat::GetSamplesPerPixel() const

Samples Per Pixel. ";

%feature("docstring")  gdcm::PixelFormat::GetScalarType "ScalarType
gdcm::PixelFormat::GetScalarType() const

ScalarType does not take into account the sample per pixel. ";

%feature("docstring")  gdcm::PixelFormat::GetScalarTypeAsString "const char* gdcm::PixelFormat::GetScalarTypeAsString() const ";

%feature("docstring")  gdcm::PixelFormat::PixelFormat "gdcm::PixelFormat::PixelFormat(ScalarType st) ";

%feature("docstring")  gdcm::PixelFormat::PixelFormat "gdcm::PixelFormat::PixelFormat(unsigned short samplesperpixel=1,
unsigned short bitsallocated=8, unsigned short bitsstored=8, unsigned
short highbit=7, unsigned short pixelrepresentation=0) ";

%feature("docstring")  gdcm::PixelFormat::Print "void
gdcm::PixelFormat::Print(std::ostream &os) const

Print. ";

%feature("docstring")  gdcm::PixelFormat::SetBitsAllocated "void
gdcm::PixelFormat::SetBitsAllocated(unsigned short ba) ";

%feature("docstring")  gdcm::PixelFormat::SetBitsStored "void
gdcm::PixelFormat::SetBitsStored(unsigned short bs) ";

%feature("docstring")  gdcm::PixelFormat::SetHighBit "void
gdcm::PixelFormat::SetHighBit(unsigned short hb) ";

%feature("docstring")  gdcm::PixelFormat::SetPixelRepresentation "void gdcm::PixelFormat::SetPixelRepresentation(unsigned short pr) ";

%feature("docstring")  gdcm::PixelFormat::SetSamplesPerPixel "void
gdcm::PixelFormat::SetSamplesPerPixel(unsigned short spp) ";

%feature("docstring")  gdcm::PixelFormat::SetScalarType "void
gdcm::PixelFormat::SetScalarType(ScalarType st) ";

%feature("docstring")  gdcm::PixelFormat::~PixelFormat "gdcm::PixelFormat::~PixelFormat() ";


// File: classgdcm_1_1PNMCodec.xml
%feature("docstring") gdcm::PNMCodec "

Class to do PNM PNM is the Portable anymap file format. The main web
page can be found at:http://netpbm.sourceforge.net/.

Only support P5 & P6 PNM file (binary grayscale and binary rgb)

C++ includes: gdcmPNMCodec.h ";

%feature("docstring")  gdcm::PNMCodec::CanCode "bool
gdcm::PNMCodec::CanCode(TransferSyntax const &ts) const

Return whether this coder support this transfer syntax (can code it).
";

%feature("docstring")  gdcm::PNMCodec::CanDecode "bool
gdcm::PNMCodec::CanDecode(TransferSyntax const &ts) const

Return whether this decoder support this transfer syntax (can decode
it). ";

%feature("docstring")  gdcm::PNMCodec::GetBufferLength "unsigned long
gdcm::PNMCodec::GetBufferLength() const ";

%feature("docstring")  gdcm::PNMCodec::PNMCodec "gdcm::PNMCodec::PNMCodec() ";

%feature("docstring")  gdcm::PNMCodec::Read "bool
gdcm::PNMCodec::Read(const char *filename, DataElement &out) const ";

%feature("docstring")  gdcm::PNMCodec::SetBufferLength "void
gdcm::PNMCodec::SetBufferLength(unsigned long l) ";

%feature("docstring")  gdcm::PNMCodec::Write "bool
gdcm::PNMCodec::Write(const char *filename, const DataElement &out)
const ";

%feature("docstring")  gdcm::PNMCodec::~PNMCodec "gdcm::PNMCodec::~PNMCodec() ";


// File: classgdcm_1_1Preamble.xml
%feature("docstring") gdcm::Preamble "

DICOM Preamble (Part 10).

C++ includes: gdcmPreamble.h ";

%feature("docstring")  gdcm::Preamble::Clear "void
gdcm::Preamble::Clear() ";

%feature("docstring")  gdcm::Preamble::Create "void
gdcm::Preamble::Create() ";

%feature("docstring")  gdcm::Preamble::GetInternal "const char*
gdcm::Preamble::GetInternal() const ";

%feature("docstring")  gdcm::Preamble::IsEmpty "bool
gdcm::Preamble::IsEmpty() const ";

%feature("docstring")  gdcm::Preamble::Preamble "gdcm::Preamble::Preamble(Preamble const &preamble) ";

%feature("docstring")  gdcm::Preamble::Preamble "gdcm::Preamble::Preamble() ";

%feature("docstring")  gdcm::Preamble::Print "void
gdcm::Preamble::Print(std::ostream &os) const ";

%feature("docstring")  gdcm::Preamble::Read "std::istream&
gdcm::Preamble::Read(std::istream &is) ";

%feature("docstring")  gdcm::Preamble::Remove "void
gdcm::Preamble::Remove() ";

%feature("docstring")  gdcm::Preamble::Valid "void
gdcm::Preamble::Valid() ";

%feature("docstring")  gdcm::Preamble::Write "std::ostream const&
gdcm::Preamble::Write(std::ostream &os) const ";

%feature("docstring")  gdcm::Preamble::~Preamble "gdcm::Preamble::~Preamble() ";


// File: classgdcm_1_1Printer.xml
%feature("docstring") gdcm::Printer "

Printer class.

C++ includes: gdcmPrinter.h ";

%feature("docstring")  gdcm::Printer::GetPrintStyle "PrintStyles
gdcm::Printer::GetPrintStyle() const ";

%feature("docstring")  gdcm::Printer::Print "void
gdcm::Printer::Print(std::ostream &os) ";

%feature("docstring")  gdcm::Printer::Printer "gdcm::Printer::Printer() ";

%feature("docstring")  gdcm::Printer::SetColor "void
gdcm::Printer::SetColor(bool c) ";

%feature("docstring")  gdcm::Printer::SetFile "void
gdcm::Printer::SetFile(File const &f) ";

%feature("docstring")  gdcm::Printer::SetStyle "void
gdcm::Printer::SetStyle(PrintStyles ps) ";

%feature("docstring")  gdcm::Printer::~Printer "gdcm::Printer::~Printer() ";


// File: classstd_1_1priority__queue.xml
%feature("docstring") std::priority_queue "

STL class. ";


// File: classgdcm_1_1PrivateDict.xml
%feature("docstring") gdcm::PrivateDict "

Private Dict.

C++ includes: gdcmDict.h ";

%feature("docstring")  gdcm::PrivateDict::AddDictEntry "void
gdcm::PrivateDict::AddDictEntry(const PrivateTag &tag, const DictEntry
&de) ";

%feature("docstring")  gdcm::PrivateDict::GetDictEntry "const
DictEntry& gdcm::PrivateDict::GetDictEntry(const PrivateTag &tag)
const ";

%feature("docstring")  gdcm::PrivateDict::IsEmpty "bool
gdcm::PrivateDict::IsEmpty() const ";

%feature("docstring")  gdcm::PrivateDict::PrintXML "void
gdcm::PrivateDict::PrintXML() const ";

%feature("docstring")  gdcm::PrivateDict::PrivateDict "gdcm::PrivateDict::PrivateDict() ";

%feature("docstring")  gdcm::PrivateDict::~PrivateDict "gdcm::PrivateDict::~PrivateDict() ";


// File: classgdcm_1_1PrivateTag.xml
%feature("docstring") gdcm::PrivateTag "

Class to represent a Private DICOM Data Element ( Attribute) Tag
(Group, Element, Owner).

private tag have element value in: [0x10,0xff], for instance
0x0009,0x0000 is NOT a private tag

C++ includes: gdcmPrivateTag.h ";

%feature("docstring")  gdcm::PrivateTag::GetOwner "const char*
gdcm::PrivateTag::GetOwner() const ";

%feature("docstring")  gdcm::PrivateTag::PrivateTag "gdcm::PrivateTag::PrivateTag(uint16_t group=0, uint16_t element=0,
const char *owner=\"\") ";

%feature("docstring")  gdcm::PrivateTag::SetOwner "void
gdcm::PrivateTag::SetOwner(const char *owner) ";


// File: classgdcm_1_1PVRGCodec.xml
%feature("docstring") gdcm::PVRGCodec "

PVRGCodec.

pvrg is a broken implementation of the JPEG standard. It is known to
have a bug in the 16bits lossless implementation of the standard.  In
an ideal world, you should not need this codec at all. But to support
some broken file such as:

PHILIPS_Gyroscan-12-Jpeg_Extended_Process_2_4.dcm

we have to...

C++ includes: gdcmPVRGCodec.h ";

%feature("docstring")  gdcm::PVRGCodec::CanCode "bool
gdcm::PVRGCodec::CanCode(TransferSyntax const &ts) const

Return whether this coder support this transfer syntax (can code it).
";

%feature("docstring")  gdcm::PVRGCodec::CanDecode "bool
gdcm::PVRGCodec::CanDecode(TransferSyntax const &ts) const

Return whether this decoder support this transfer syntax (can decode
it). ";

%feature("docstring")  gdcm::PVRGCodec::Code "bool
gdcm::PVRGCodec::Code(DataElement const &in, DataElement &out)

Code. ";

%feature("docstring")  gdcm::PVRGCodec::Decode "bool
gdcm::PVRGCodec::Decode(DataElement const &is, DataElement &os)

Decode. ";

%feature("docstring")  gdcm::PVRGCodec::PVRGCodec "gdcm::PVRGCodec::PVRGCodec() ";

%feature("docstring")  gdcm::PVRGCodec::~PVRGCodec "gdcm::PVRGCodec::~PVRGCodec() ";


// File: classgdcm_1_1PythonDataSet.xml
%feature("docstring") gdcm::PythonDataSet "C++ includes:
gdcmDataSet.h ";

%feature("docstring")  gdcm::PythonDataSet::GetCurrent "const
DataElement& gdcm::PythonDataSet::GetCurrent() const ";

%feature("docstring")  gdcm::PythonDataSet::IsAtEnd "bool
gdcm::PythonDataSet::IsAtEnd() const ";

%feature("docstring")  gdcm::PythonDataSet::Next "void
gdcm::PythonDataSet::Next() ";

%feature("docstring")  gdcm::PythonDataSet::PythonDataSet "gdcm::PythonDataSet::PythonDataSet(DataSet &des) ";

%feature("docstring")  gdcm::PythonDataSet::Start "void
gdcm::PythonDataSet::Start() ";


// File: classgdcm_1_1PythonFilter.xml
%feature("docstring") gdcm::PythonFilter "

PythonFilter PythonFilter is the class that make gdcm2.x looks more
like gdcm1 and transform the binary blob contained in a DataElement
into a string, typically this is a nice feature to have for wrapped
language.

C++ includes: gdcmPythonFilter.h ";

%feature("docstring")  gdcm::PythonFilter::GetFile "const File&
gdcm::PythonFilter::GetFile() const ";

%feature("docstring")  gdcm::PythonFilter::GetFile "File&
gdcm::PythonFilter::GetFile() ";

%feature("docstring")  gdcm::PythonFilter::PythonFilter "gdcm::PythonFilter::PythonFilter() ";

%feature("docstring")  gdcm::PythonFilter::SetDicts "void
gdcm::PythonFilter::SetDicts(const Dicts &dicts) ";

%feature("docstring")  gdcm::PythonFilter::SetFile "void
gdcm::PythonFilter::SetFile(const File &f) ";

%feature("docstring")  gdcm::PythonFilter::ToPyObject "PyObject*
gdcm::PythonFilter::ToPyObject(const Tag &t) const ";

%feature("docstring")  gdcm::PythonFilter::UseDictAlways "void
gdcm::PythonFilter::UseDictAlways(bool use) ";

%feature("docstring")  gdcm::PythonFilter::~PythonFilter "gdcm::PythonFilter::~PythonFilter() ";


// File: classgdcm_1_1PythonTagToValue.xml
%feature("docstring") gdcm::PythonTagToValue "C++ includes:
gdcmScanner.h ";

%feature("docstring")  gdcm::PythonTagToValue::GetCurrent "const
Scanner::TagToValueValueType& gdcm::PythonTagToValue::GetCurrent()
const ";

%feature("docstring")  gdcm::PythonTagToValue::GetCurrentTag "const
Tag& gdcm::PythonTagToValue::GetCurrentTag() const ";

%feature("docstring")  gdcm::PythonTagToValue::GetCurrentValue "const
char* gdcm::PythonTagToValue::GetCurrentValue() const ";

%feature("docstring")  gdcm::PythonTagToValue::IsAtEnd "bool
gdcm::PythonTagToValue::IsAtEnd() const ";

%feature("docstring")  gdcm::PythonTagToValue::Next "void
gdcm::PythonTagToValue::Next() ";

%feature("docstring")  gdcm::PythonTagToValue::PythonTagToValue "gdcm::PythonTagToValue::PythonTagToValue(Scanner::TagToValue const
&t2v) ";

%feature("docstring")  gdcm::PythonTagToValue::Start "void
gdcm::PythonTagToValue::Start() ";


// File: classstd_1_1queue.xml
%feature("docstring") std::queue "

STL class. ";


// File: classstd_1_1range__error.xml
%feature("docstring") std::range_error "

STL class. ";


// File: classgdcm_1_1RAWCodec.xml
%feature("docstring") gdcm::RAWCodec "

RAWCodec class.

C++ includes: gdcmRAWCodec.h ";

%feature("docstring")  gdcm::RAWCodec::CanCode "bool
gdcm::RAWCodec::CanCode(TransferSyntax const &ts) const

Return whether this coder support this transfer syntax (can code it).
";

%feature("docstring")  gdcm::RAWCodec::CanDecode "bool
gdcm::RAWCodec::CanDecode(TransferSyntax const &ts) const

Return whether this decoder support this transfer syntax (can decode
it). ";

%feature("docstring")  gdcm::RAWCodec::Code "bool
gdcm::RAWCodec::Code(DataElement const &in, DataElement &out)

Code. ";

%feature("docstring")  gdcm::RAWCodec::Decode "bool
gdcm::RAWCodec::Decode(DataElement const &is, DataElement &os)

Decode. ";

%feature("docstring")  gdcm::RAWCodec::RAWCodec "gdcm::RAWCodec::RAWCodec() ";

%feature("docstring")  gdcm::RAWCodec::~RAWCodec "gdcm::RAWCodec::~RAWCodec() ";


// File: classgdcm_1_1Reader.xml
%feature("docstring") gdcm::Reader "

Reader ala DOM (Document Object Model).

This class is a non-validating reader, it will only performs well-
formedness check only, and to some extent catch known error (non well-
formed document).

Detailled description here

A DataSet DOES NOT contains group 0x0002

This is really a DataSet reader. This will not make sure the dataset
conform to any IOD at all. This is a completely different step. The
reasoning was that user could control the IOD there lib would handle
and thus we would not be able to read a DataSet if the IOD was not
found Instead we separate the reading from the validation.

NOTE: From GDCM1.x. Users will realize that one feature is missing
from this DOM implementation. In GDCM 1.x user used to be able to
control the size of the Value to be read. By default it was 0xfff. The
main author of GDCM2 thought this was too dangerous and harmful and
therefore this feature did not make it into GDCM2

WARNING: GDCM will not produce warning for unorder (non-alphabetical
order). See gdcm::Writer for more info

C++ includes: gdcmReader.h ";

%feature("docstring")  gdcm::Reader::GetFile "File&
gdcm::Reader::GetFile() ";

%feature("docstring")  gdcm::Reader::GetFile "const File&
gdcm::Reader::GetFile() const ";

%feature("docstring")  gdcm::Reader::Read "virtual bool
gdcm::Reader::Read() ";

%feature("docstring")  gdcm::Reader::Reader "gdcm::Reader::Reader()
";

%feature("docstring")  gdcm::Reader::ReadUpToTag "bool
gdcm::Reader::ReadUpToTag(const Tag &tag, std::set< Tag > const
&skiptags) ";

%feature("docstring")  gdcm::Reader::SetFile "void
gdcm::Reader::SetFile(File &file) ";

%feature("docstring")  gdcm::Reader::SetFileName "void
gdcm::Reader::SetFileName(const char *filename) ";

%feature("docstring")  gdcm::Reader::SetStream "void
gdcm::Reader::SetStream(std::istream &input_stream) ";

%feature("docstring")  gdcm::Reader::~Reader "virtual
gdcm::Reader::~Reader() ";


// File: classgdcm_1_1Rescaler.xml
%feature("docstring") gdcm::Rescaler "

Rescale class.

handle floating point transformation back and forth to integer
properly (no loss)

C++ includes: gdcmRescaler.h ";

%feature("docstring")  gdcm::Rescaler::ComputeInterceptSlopePixelType
"PixelFormat::ScalarType
gdcm::Rescaler::ComputeInterceptSlopePixelType() ";

%feature("docstring")  gdcm::Rescaler::ComputePixelTypeFromMinMax "PixelFormat gdcm::Rescaler::ComputePixelTypeFromMinMax() ";

%feature("docstring")  gdcm::Rescaler::InverseRescale "bool
gdcm::Rescaler::InverseRescale(char *out, const char *in, size_t n) ";

%feature("docstring")  gdcm::Rescaler::Rescale "bool
gdcm::Rescaler::Rescale(char *out, const char *in, size_t n) ";

%feature("docstring")  gdcm::Rescaler::Rescaler "gdcm::Rescaler::Rescaler() ";

%feature("docstring")  gdcm::Rescaler::SetIntercept "void
gdcm::Rescaler::SetIntercept(double i) ";

%feature("docstring")  gdcm::Rescaler::SetMinMaxForPixelType "void
gdcm::Rescaler::SetMinMaxForPixelType(double min, double max) ";

%feature("docstring")  gdcm::Rescaler::SetPixelFormat "void
gdcm::Rescaler::SetPixelFormat(PixelFormat const &pf) ";

%feature("docstring")  gdcm::Rescaler::SetSlope "void
gdcm::Rescaler::SetSlope(double s) ";

%feature("docstring")  gdcm::Rescaler::~Rescaler "gdcm::Rescaler::~Rescaler() ";


// File: classgdcm_1_1RLECodec.xml
%feature("docstring") gdcm::RLECodec "

Class to do RLE.

ANSI X3.9 A.4.2 RLE Compression Annex G defines a RLE Compression
Transfer Syntax. This transfer Syntax is identified by the UID value
\"1.2.840.10008.1.2.5\". If the object allows multi-frame images in
the pixel data field, then each frame shall be encoded separately.
Each frame shall be encoded in one and only one Fragment (see PS
3.5.8.2).

C++ includes: gdcmRLECodec.h ";

%feature("docstring")  gdcm::RLECodec::CanCode "bool
gdcm::RLECodec::CanCode(TransferSyntax const &ts) const

Return whether this coder support this transfer syntax (can code it).
";

%feature("docstring")  gdcm::RLECodec::CanDecode "bool
gdcm::RLECodec::CanDecode(TransferSyntax const &ts) const

Return whether this decoder support this transfer syntax (can decode
it). ";

%feature("docstring")  gdcm::RLECodec::Code "bool
gdcm::RLECodec::Code(DataElement const &in, DataElement &out)

Code. ";

%feature("docstring")  gdcm::RLECodec::Decode "bool
gdcm::RLECodec::Decode(DataElement const &is, DataElement &os)

Decode. ";

%feature("docstring")  gdcm::RLECodec::GetBufferLength "unsigned long
gdcm::RLECodec::GetBufferLength() const ";

%feature("docstring")  gdcm::RLECodec::RLECodec "gdcm::RLECodec::RLECodec() ";

%feature("docstring")  gdcm::RLECodec::SetBufferLength "void
gdcm::RLECodec::SetBufferLength(unsigned long l) ";

%feature("docstring")  gdcm::RLECodec::SetLength "void
gdcm::RLECodec::SetLength(unsigned long l) ";

%feature("docstring")  gdcm::RLECodec::SetNumberOfDimensions "void
gdcm::RLECodec::SetNumberOfDimensions(unsigned int dim) ";

%feature("docstring")  gdcm::RLECodec::~RLECodec "gdcm::RLECodec::~RLECodec() ";


// File: classstd_1_1runtime__error.xml
%feature("docstring") std::runtime_error "

STL class. ";


// File: classgdcm_1_1Scanner.xml
%feature("docstring") gdcm::Scanner "

Scanner.

Todo This filter is dealing with both VRASCII and VRBINARY element,
thanks to the help of gdcm::StringFilter

WARNING:  : IMPORTANT In case of file where tags are not ordered, the
output will be garbage

: implementation details. All values are stored in a std::set of
std::string. Then the *address* of the cstring underlying the
std::string is used in the std::map

C++ includes: gdcmScanner.h ";

%feature("docstring")  gdcm::Scanner::AddSkipTag "void
gdcm::Scanner::AddSkipTag(Tag const &t)

Add a tag that will need to be skipped. Those are root level skip
tags. ";

%feature("docstring")  gdcm::Scanner::AddTag "void
gdcm::Scanner::AddTag(Tag const &t)

Add a tag that will need to be read. Those are root level skip tags.
";

%feature("docstring")  gdcm::Scanner::Begin "ConstIterator
gdcm::Scanner::Begin() const ";

%feature("docstring")  gdcm::Scanner::ClearSkipTags "void
gdcm::Scanner::ClearSkipTags() ";

%feature("docstring")  gdcm::Scanner::ClearTags "void
gdcm::Scanner::ClearTags() ";

%feature("docstring")  gdcm::Scanner::End "ConstIterator
gdcm::Scanner::End() const ";

%feature("docstring")  gdcm::Scanner::GetKeys "Directory::FilenamesType gdcm::Scanner::GetKeys() const

Return the list of filename that are key in the internal map, which
means those filename were properly parsed ";

%feature("docstring")  gdcm::Scanner::GetMapping "TagToValue const&
gdcm::Scanner::GetMapping(const char *filename) const

Get the std::map mapping filenames to value for file 'filename'. ";

%feature("docstring")  gdcm::Scanner::GetMappings "MappingType const&
gdcm::Scanner::GetMappings() const

Mappings are the mapping from a particular tag to the map, mapping
filename to value:. ";

%feature("docstring")  gdcm::Scanner::GetValue "const char*
gdcm::Scanner::GetValue(const char *filename, Tag const &t) const

Retrieve the value found for tag: t associated with file: filename
This is meant for a single short call. If multiple calls (multiple
tags) should be done, prefer the GetMapping function, and then reuse
the TagToValue hash table. ";

%feature("docstring")  gdcm::Scanner::GetValues "ValuesType const&
gdcm::Scanner::GetValues() const

Get all the values found (in lexicographic order). ";

%feature("docstring")  gdcm::Scanner::IsKey "bool
gdcm::Scanner::IsKey(const char *filename) const

Check if filename is a key in the Mapping table. returns true only of
file can be found, which means the file was indeed a DICOM file that
could be processed ";

%feature("docstring")  gdcm::Scanner::Print "void
gdcm::Scanner::Print(std::ostream &os) const

Print result. ";

%feature("docstring")  gdcm::Scanner::Scan "bool
gdcm::Scanner::Scan(Directory::FilenamesType const &filenames)

Start the scan ! ";

%feature("docstring")  gdcm::Scanner::Scanner "gdcm::Scanner::Scanner() ";

%feature("docstring")  gdcm::Scanner::~Scanner "gdcm::Scanner::~Scanner() ";


// File: structgdcm_1_1Scanner_1_1ltstr.xml
%feature("docstring") gdcm::Scanner::ltstr "C++ includes:
gdcmScanner.h ";


// File: classgdcm_1_1SegmentedPaletteColorLookupTable.xml
%feature("docstring") gdcm::SegmentedPaletteColorLookupTable "

SegmentedPaletteColorLookupTable class.

C++ includes: gdcmSegmentedPaletteColorLookupTable.h ";

%feature("docstring")  gdcm::SegmentedPaletteColorLookupTable::Print "void gdcm::SegmentedPaletteColorLookupTable::Print(std::ostream &)
const ";

%feature("docstring")
gdcm::SegmentedPaletteColorLookupTable::SegmentedPaletteColorLookupTable
"gdcm::SegmentedPaletteColorLookupTable::SegmentedPaletteColorLookupTable()
";

%feature("docstring")  gdcm::SegmentedPaletteColorLookupTable::SetLUT
"void gdcm::SegmentedPaletteColorLookupTable::SetLUT(LookupTableType
type, const unsigned char *array, unsigned int length)

Initialize a SegmentedPaletteColorLookupTable. ";

%feature("docstring")
gdcm::SegmentedPaletteColorLookupTable::~SegmentedPaletteColorLookupTable
"gdcm::SegmentedPaletteColorLookupTable::~SegmentedPaletteColorLookupTable()
";


// File: classgdcm_1_1SequenceOfFragments.xml
%feature("docstring") gdcm::SequenceOfFragments "

Class to represent a Sequence Of Fragments.

Todo I do not enforce that Sequence of Fragments ends with a SQ end
del

C++ includes: gdcmSequenceOfFragments.h ";

%feature("docstring")  gdcm::SequenceOfFragments::AddFragment "void
gdcm::SequenceOfFragments::AddFragment(Fragment const &item)

Appends a Fragment to the already added ones. ";

%feature("docstring")  gdcm::SequenceOfFragments::Clear "void
gdcm::SequenceOfFragments::Clear() ";

%feature("docstring")  gdcm::SequenceOfFragments::ComputeByteLength "unsigned long gdcm::SequenceOfFragments::ComputeByteLength() const ";

%feature("docstring")  gdcm::SequenceOfFragments::ComputeLength "VL
gdcm::SequenceOfFragments::ComputeLength() const ";

%feature("docstring")  gdcm::SequenceOfFragments::GetBuffer "bool
gdcm::SequenceOfFragments::GetBuffer(char *buffer, unsigned long
length) const ";

%feature("docstring")  gdcm::SequenceOfFragments::GetFragBuffer "bool
gdcm::SequenceOfFragments::GetFragBuffer(unsigned int fragNb, char
*buffer, unsigned long &length) const ";

%feature("docstring")  gdcm::SequenceOfFragments::GetFragment "const
Fragment& gdcm::SequenceOfFragments::GetFragment(unsigned int num)
const ";

%feature("docstring")  gdcm::SequenceOfFragments::GetLength "VL
gdcm::SequenceOfFragments::GetLength() const

Returns the SQ length, as read from disk. ";

%feature("docstring")  gdcm::SequenceOfFragments::GetNumberOfFragments
"unsigned int gdcm::SequenceOfFragments::GetNumberOfFragments() const
";

%feature("docstring")  gdcm::SequenceOfFragments::GetTable "BasicOffsetTable& gdcm::SequenceOfFragments::GetTable() ";

%feature("docstring")  gdcm::SequenceOfFragments::GetTable "const
BasicOffsetTable& gdcm::SequenceOfFragments::GetTable() const ";

%feature("docstring")  gdcm::SequenceOfFragments::Read "std::istream&
gdcm::SequenceOfFragments::Read(std::istream &is) ";

%feature("docstring")  gdcm::SequenceOfFragments::SequenceOfFragments
"gdcm::SequenceOfFragments::SequenceOfFragments()

constructor (UndefinedLength by default) ";

%feature("docstring")  gdcm::SequenceOfFragments::SetLength "void
gdcm::SequenceOfFragments::SetLength(VL length)

Sets the actual SQ length. ";

%feature("docstring")  gdcm::SequenceOfFragments::Write "std::ostream
const& gdcm::SequenceOfFragments::Write(std::ostream &os) const ";

%feature("docstring")  gdcm::SequenceOfFragments::WriteBuffer "bool
gdcm::SequenceOfFragments::WriteBuffer(std::ostream &os) const ";


// File: classgdcm_1_1SequenceOfItems.xml
%feature("docstring") gdcm::SequenceOfItems "

Class to represent a Sequence Of Items (value representation : SQ) a
Value Representation for Data Elements that contains a sequence of
Data Sets.

Sequence of Item allows for Nested Data Sets.

See PS 3.5, 7.4.6 Data Element Type Within a Sequence SEQUENCE OF
ITEMS (VALUE REPRESENTATION SQ) A Value Representation for Data
Elements that contain a sequence of Data Sets. Sequence of Items
allows for Nested Data Sets.

C++ includes: gdcmSequenceOfItems.h ";

%feature("docstring")  gdcm::SequenceOfItems::AddItem "void
gdcm::SequenceOfItems::AddItem(Item const &item)

Appends an Item to the already added ones. ";

%feature("docstring")  gdcm::SequenceOfItems::Begin "ConstIterator
gdcm::SequenceOfItems::Begin() const ";

%feature("docstring")  gdcm::SequenceOfItems::Begin "Iterator
gdcm::SequenceOfItems::Begin() ";

%feature("docstring")  gdcm::SequenceOfItems::Clear "void
gdcm::SequenceOfItems::Clear() ";

%feature("docstring")  gdcm::SequenceOfItems::ComputeLength "VL
gdcm::SequenceOfItems::ComputeLength() const ";

%feature("docstring")  gdcm::SequenceOfItems::End "ConstIterator
gdcm::SequenceOfItems::End() const ";

%feature("docstring")  gdcm::SequenceOfItems::End "Iterator
gdcm::SequenceOfItems::End() ";

%feature("docstring")  gdcm::SequenceOfItems::GetItem "Item&
gdcm::SequenceOfItems::GetItem(unsigned int position) ";

%feature("docstring")  gdcm::SequenceOfItems::GetItem "const Item&
gdcm::SequenceOfItems::GetItem(unsigned int position) const ";

%feature("docstring")  gdcm::SequenceOfItems::GetLength "VL
gdcm::SequenceOfItems::GetLength() const

Returns the SQ length, as read from disk. ";

%feature("docstring")  gdcm::SequenceOfItems::GetNumberOfItems "unsigned int gdcm::SequenceOfItems::GetNumberOfItems() const ";

%feature("docstring")  gdcm::SequenceOfItems::Read "std::istream&
gdcm::SequenceOfItems::Read(std::istream &is) ";

%feature("docstring")  gdcm::SequenceOfItems::SequenceOfItems "gdcm::SequenceOfItems::SequenceOfItems()

constructor (UndefinedLength by default) ";

%feature("docstring")  gdcm::SequenceOfItems::SetLength "void
gdcm::SequenceOfItems::SetLength(VL length)

Sets the actual SQ length. ";

%feature("docstring")  gdcm::SequenceOfItems::SetLengthToUndefined "void gdcm::SequenceOfItems::SetLengthToUndefined() ";

%feature("docstring")  gdcm::SequenceOfItems::Write "std::ostream
const& gdcm::SequenceOfItems::Write(std::ostream &os) const ";


// File: classgdcm_1_1Series.xml
%feature("docstring") gdcm::Series "

Series.

C++ includes: gdcmSeries.h ";

%feature("docstring")  gdcm::Series::Series "gdcm::Series::Series()
";


// File: classstd_1_1set.xml
%feature("docstring") std::set "

STL class. ";


// File: classstd_1_1set_1_1const__iterator.xml
%feature("docstring") std::set::const_iterator "

STL iterator class. ";


// File: classstd_1_1set_1_1const__reverse__iterator.xml
%feature("docstring") std::set::const_reverse_iterator "

STL iterator class. ";


// File: classstd_1_1set_1_1iterator.xml
%feature("docstring") std::set::iterator "

STL iterator class. ";


// File: classstd_1_1set_1_1reverse__iterator.xml
%feature("docstring") std::set::reverse_iterator "

STL iterator class. ";


// File: classgdcm_1_1SmartPointer.xml
%feature("docstring") gdcm::SmartPointer "

Class for Smart Pointer.

Will only work for subclass of gdcm::Object See tr1/shared_ptr for a
more general approach (not invasive) include <tr1/memory> {
shared_ptr<Bla> b(new Bla); } Class partly based on post by Bill
Hubauer:http://groups.google.com/group/comp.lang.c++/msg/173ddc38a827a930

See:  http://www.davethehat.com/articles/smartp.htm  and
itk::SmartPointer

C++ includes: gdcmSmartPointer.h ";

%feature("docstring")  gdcm::SmartPointer::SmartPointer "gdcm::SmartPointer< ObjectType >::SmartPointer(ObjectType const &p) ";

%feature("docstring")  gdcm::SmartPointer::SmartPointer "gdcm::SmartPointer< ObjectType >::SmartPointer(ObjectType *p) ";

%feature("docstring")  gdcm::SmartPointer::SmartPointer "gdcm::SmartPointer< ObjectType >::SmartPointer(const SmartPointer<
ObjectType > &p) ";

%feature("docstring")  gdcm::SmartPointer::SmartPointer "gdcm::SmartPointer< ObjectType >::SmartPointer() ";

%feature("docstring")  gdcm::SmartPointer::~SmartPointer "gdcm::SmartPointer< ObjectType >::~SmartPointer() ";


// File: classgdcm_1_1SOPClassUIDToIOD.xml
%feature("docstring") gdcm::SOPClassUIDToIOD "

Class convert a class uid into IOD.

C++ includes: gdcmSOPClassUIDToIOD.h ";


// File: classgdcm_1_1Sorter.xml
%feature("docstring") gdcm::Sorter "

Sorter.

C++ includes: gdcmSorter.h ";

%feature("docstring")  gdcm::Sorter::AddSelect "bool
gdcm::Sorter::AddSelect(Tag const &tag, const char *value)

UNSUPPORTED FOR NOW. ";

%feature("docstring")  gdcm::Sorter::GetFilenames "const
std::vector<std::string>& gdcm::Sorter::GetFilenames() const

Return the list of filenames as sorted by the specific algorithm used.
Empty by default (before Sort() is called) ";

%feature("docstring")  gdcm::Sorter::Print "void
gdcm::Sorter::Print(std::ostream &os)

Print. ";

%feature("docstring")  gdcm::Sorter::Sort "virtual bool
gdcm::Sorter::Sort(std::vector< std::string > const &filenames)

Typically the output of gdcm::Directory::GetFilenames(). ";

%feature("docstring")  gdcm::Sorter::Sorter "gdcm::Sorter::Sorter()
";

%feature("docstring")  gdcm::Sorter::~Sorter "virtual
gdcm::Sorter::~Sorter() ";


// File: classgdcm_1_1Spectroscopy.xml
%feature("docstring") gdcm::Spectroscopy "

Spectroscopy class.

C++ includes: gdcmSpectroscopy.h ";

%feature("docstring")  gdcm::Spectroscopy::Spectroscopy "gdcm::Spectroscopy::Spectroscopy() ";


// File: classgdcm_1_1SplitMosaicFilter.xml
%feature("docstring") gdcm::SplitMosaicFilter "

SplitMosaicFilter class Class to reshuffle bytes for a SIEMENS Mosaic
image.

C++ includes: gdcmSplitMosaicFilter.h ";

%feature("docstring")  gdcm::SplitMosaicFilter::GetFile "const File&
gdcm::SplitMosaicFilter::GetFile() const ";

%feature("docstring")  gdcm::SplitMosaicFilter::GetFile "File&
gdcm::SplitMosaicFilter::GetFile() ";

%feature("docstring")  gdcm::SplitMosaicFilter::GetImage "Image&
gdcm::SplitMosaicFilter::GetImage() ";

%feature("docstring")  gdcm::SplitMosaicFilter::GetImage "const
Image& gdcm::SplitMosaicFilter::GetImage() const ";

%feature("docstring")  gdcm::SplitMosaicFilter::SetFile "void
gdcm::SplitMosaicFilter::SetFile(const File &f) ";

%feature("docstring")  gdcm::SplitMosaicFilter::SetImage "void
gdcm::SplitMosaicFilter::SetImage(const Image &image) ";

%feature("docstring")  gdcm::SplitMosaicFilter::Split "bool
gdcm::SplitMosaicFilter::Split()

Split the SIEMENS MOSAIC image. ";

%feature("docstring")  gdcm::SplitMosaicFilter::SplitMosaicFilter "gdcm::SplitMosaicFilter::SplitMosaicFilter() ";

%feature("docstring")  gdcm::SplitMosaicFilter::~SplitMosaicFilter "gdcm::SplitMosaicFilter::~SplitMosaicFilter() ";


// File: classstd_1_1stack.xml
%feature("docstring") std::stack "

STL class. ";


// File: structgdcm_1_1static__assert__test.xml
%feature("docstring") gdcm::static_assert_test "C++ includes:
gdcmStaticAssert.h ";


// File: structgdcm_1_1STATIC__ASSERTION__FAILURE_3_01true_01_4.xml
%feature("docstring") gdcm::STATIC_ASSERTION_FAILURE< true > " C++
includes: gdcmStaticAssert.h ";


// File: classgdcm_1_1String.xml
%feature("docstring") gdcm::String "

String.

bla

C++ includes: gdcmString.h ";

%feature("docstring")  gdcm::String::IsValid "bool gdcm::String<
TDelimiter, TMaxLength, TPadChar >::IsValid() const

return if string is valid ";

%feature("docstring")  gdcm::String::String "gdcm::String<
TDelimiter, TMaxLength, TPadChar >::String(const std::string &s,
size_type pos=0, size_type n=npos) ";

%feature("docstring")  gdcm::String::String "gdcm::String<
TDelimiter, TMaxLength, TPadChar >::String(const value_type *s,
size_type n) ";

%feature("docstring")  gdcm::String::String "gdcm::String<
TDelimiter, TMaxLength, TPadChar >::String(const value_type *s) ";

%feature("docstring")  gdcm::String::String "gdcm::String<
TDelimiter, TMaxLength, TPadChar >::String()

String constructors. ";


// File: classstd_1_1string.xml
%feature("docstring") std::string "

STL class. ";


// File: classstd_1_1string_1_1const__iterator.xml
%feature("docstring") std::string::const_iterator "

STL iterator class. ";


// File: classstd_1_1string_1_1const__reverse__iterator.xml
%feature("docstring") std::string::const_reverse_iterator "

STL iterator class. ";


// File: classstd_1_1string_1_1iterator.xml
%feature("docstring") std::string::iterator "

STL iterator class. ";


// File: classstd_1_1string_1_1reverse__iterator.xml
%feature("docstring") std::string::reverse_iterator "

STL iterator class. ";


// File: classgdcm_1_1StringFilter.xml
%feature("docstring") gdcm::StringFilter "

StringFilter StringFilter is the class that make gdcm2.x looks more
like gdcm1 and transform the binary blob contained in a DataElement
into a string, typically this is a nice feature to have for wrapped
language.

C++ includes: gdcmStringFilter.h ";

%feature("docstring")  gdcm::StringFilter::FromString "std::string
gdcm::StringFilter::FromString(const Tag &t, const char *value, VL
const &vl) ";

%feature("docstring")  gdcm::StringFilter::GetFile "const File&
gdcm::StringFilter::GetFile() const ";

%feature("docstring")  gdcm::StringFilter::GetFile "File&
gdcm::StringFilter::GetFile() ";

%feature("docstring")  gdcm::StringFilter::SetDicts "void
gdcm::StringFilter::SetDicts(const Dicts &dicts)

Allow user to pass in there own dicts. ";

%feature("docstring")  gdcm::StringFilter::SetFile "void
gdcm::StringFilter::SetFile(const File &f)

Set/Get File. ";

%feature("docstring")  gdcm::StringFilter::StringFilter "gdcm::StringFilter::StringFilter() ";

%feature("docstring")  gdcm::StringFilter::ToString "std::string
gdcm::StringFilter::ToString(const Tag &t) const

Convert to string the ByteValue contained in a DataElement. ";

%feature("docstring")  gdcm::StringFilter::ToStringPair "std::pair<std::string, std::string>
gdcm::StringFilter::ToStringPair(const Tag &t) const

Convert to string the ByteValue contained in a DataElement the
returned elements are: pair.first : the name as found in the
dictionary of DataElement pari.second : the value encoded into a
string (US,UL...) are properly converted ";

%feature("docstring")  gdcm::StringFilter::UseDictAlways "void
gdcm::StringFilter::UseDictAlways(bool use) ";

%feature("docstring")  gdcm::StringFilter::~StringFilter "gdcm::StringFilter::~StringFilter() ";


// File: classstd_1_1stringstream.xml
%feature("docstring") std::stringstream "

STL class. ";


// File: classgdcm_1_1Study.xml
%feature("docstring") gdcm::Study "

Study.

C++ includes: gdcmStudy.h ";

%feature("docstring")  gdcm::Study::Study "gdcm::Study::Study() ";


// File: classgdcm_1_1SwapCode.xml
%feature("docstring") gdcm::SwapCode "

SwapCode representation.

C++ includes: gdcmSwapCode.h ";

%feature("docstring")  gdcm::SwapCode::SwapCode "gdcm::SwapCode::SwapCode(SwapCodeType sc=Unknown) ";


// File: classgdcm_1_1SwapperDoOp.xml
%feature("docstring") gdcm::SwapperDoOp "C++ includes: gdcmSwapper.h
";


// File: classgdcm_1_1SwapperNoOp.xml
%feature("docstring") gdcm::SwapperNoOp "C++ includes: gdcmSwapper.h
";


// File: classgdcm_1_1System.xml
%feature("docstring") gdcm::System "

Class to do system operation.

OS independant functionalities

C++ includes: gdcmSystem.h ";


// File: classgdcm_1_1Table.xml
%feature("docstring") gdcm::Table "

Table.

C++ includes: gdcmTable.h ";

%feature("docstring")  gdcm::Table::GetTableEntry "const TableEntry&
gdcm::Table::GetTableEntry(const Tag &tag) const ";

%feature("docstring")  gdcm::Table::InsertEntry "void
gdcm::Table::InsertEntry(Tag const &tag, TableEntry const &te) ";

%feature("docstring")  gdcm::Table::Table "gdcm::Table::Table() ";

%feature("docstring")  gdcm::Table::~Table "gdcm::Table::~Table() ";


// File: classgdcm_1_1TableEntry.xml
%feature("docstring") gdcm::TableEntry "

TableEntry.

C++ includes: gdcmTableEntry.h ";

%feature("docstring")  gdcm::TableEntry::TableEntry "gdcm::TableEntry::TableEntry(const char *attribute=0, Type const
&type=Type(), const char *des=0) ";

%feature("docstring")  gdcm::TableEntry::~TableEntry "gdcm::TableEntry::~TableEntry() ";


// File: classgdcm_1_1TableReader.xml
%feature("docstring") gdcm::TableReader "

Class for representing a TableReader.

This class is an empty shell meant to be derived

C++ includes: gdcmTableReader.h ";

%feature("docstring")  gdcm::TableReader::CharacterDataHandler "virtual void gdcm::TableReader::CharacterDataHandler(const char *data,
int length) ";

%feature("docstring")  gdcm::TableReader::EndElement "virtual void
gdcm::TableReader::EndElement(const char *name) ";

%feature("docstring")  gdcm::TableReader::GetDefs "const Defs&
gdcm::TableReader::GetDefs() const ";

%feature("docstring")  gdcm::TableReader::GetFilename "const char*
gdcm::TableReader::GetFilename() ";

%feature("docstring")  gdcm::TableReader::HandleIOD "void
gdcm::TableReader::HandleIOD(const char **atts) ";

%feature("docstring")  gdcm::TableReader::HandleIODEntry "void
gdcm::TableReader::HandleIODEntry(const char **atts) ";

%feature("docstring")  gdcm::TableReader::HandleMacro "void
gdcm::TableReader::HandleMacro(const char **atts) ";

%feature("docstring")  gdcm::TableReader::HandleMacroEntry "void
gdcm::TableReader::HandleMacroEntry(const char **atts) ";

%feature("docstring")  gdcm::TableReader::HandleMacroEntryDescription
"void gdcm::TableReader::HandleMacroEntryDescription(const char
**atts) ";

%feature("docstring")  gdcm::TableReader::HandleModule "void
gdcm::TableReader::HandleModule(const char **atts) ";

%feature("docstring")  gdcm::TableReader::HandleModuleEntry "void
gdcm::TableReader::HandleModuleEntry(const char **atts) ";

%feature("docstring")  gdcm::TableReader::HandleModuleEntryDescription
"void gdcm::TableReader::HandleModuleEntryDescription(const char
**atts) ";

%feature("docstring")  gdcm::TableReader::Read "int
gdcm::TableReader::Read() ";

%feature("docstring")  gdcm::TableReader::SetFilename "void
gdcm::TableReader::SetFilename(const char *filename) ";

%feature("docstring")  gdcm::TableReader::StartElement "virtual void
gdcm::TableReader::StartElement(const char *name, const char **atts)
";

%feature("docstring")  gdcm::TableReader::TableReader "gdcm::TableReader::TableReader(Defs &defs) ";

%feature("docstring")  gdcm::TableReader::~TableReader "virtual
gdcm::TableReader::~TableReader() ";


// File: classgdcm_1_1Tag.xml
%feature("docstring") gdcm::Tag "

Class to represent a DICOM Data Element ( Attribute) Tag (Group,
Element). Basically an uint32_t which can also be expressed as two
uint16_t (group and element).

DATA ELEMENT TAG: A unique identifier for a Data Element composed of
an ordered pair of numbers (a Group Number followed by an Element
Number). GROUP NUMBER: The first number in the ordered pair of numbers
that makes up a Data Element Tag. ELEMENT NUMBER: The second number in
the ordered pair of numbers that makes up a Data Element Tag.

C++ includes: gdcmTag.h ";

%feature("docstring")  gdcm::Tag::GetElement "uint16_t
gdcm::Tag::GetElement() const

Returns the 'Element number' of the given Tag. ";

%feature("docstring")  gdcm::Tag::GetElementTag "uint32_t
gdcm::Tag::GetElementTag() const

Returns the full tag value of the given Tag. ";

%feature("docstring")  gdcm::Tag::GetGroup "uint16_t
gdcm::Tag::GetGroup() const

Returns the 'Group number' of the given Tag. ";

%feature("docstring")  gdcm::Tag::GetLength "uint32_t
gdcm::Tag::GetLength() const

return the length of tag (read: size on disk) ";

%feature("docstring")  gdcm::Tag::GetPrivateCreator "Tag
gdcm::Tag::GetPrivateCreator() const

Return the Private Creator Data Element tag of a private data element.
";

%feature("docstring")  gdcm::Tag::IsGroupLength "bool
gdcm::Tag::IsGroupLength() const

return whether the tag correspond to a group length tag: ";

%feature("docstring")  gdcm::Tag::IsGroupXX "bool
gdcm::Tag::IsGroupXX(const Tag &t) const

e.g 6002,3000 belong to groupXX: 6000,3000 ";

%feature("docstring")  gdcm::Tag::IsIllegal "bool
gdcm::Tag::IsIllegal() const

return if the tag is considered to be an illegal tag ";

%feature("docstring")  gdcm::Tag::IsPrivate "bool
gdcm::Tag::IsPrivate() const

PRIVATE DATA ELEMENT: Additional Data Element, defined by an
implementor, to communicate information that is not contained in
Standard Data Elements. Private Data elements have odd Group Numbers.
";

%feature("docstring")  gdcm::Tag::IsPrivateCreator "bool
gdcm::Tag::IsPrivateCreator() const

Returns if tag is a Private Creator (xxxx,00yy), where xxxx is odd
number and yy in [0x10,0xFF]. ";

%feature("docstring")  gdcm::Tag::IsPublic "bool
gdcm::Tag::IsPublic() const

STANDARD DATA ELEMENT: A Data Element defined in the DICOM Standard,
and therefore listed in the DICOM Data Element Dictionary in PS 3.6.
Is the Tag from the Public dict...well the implementation is buggy it
does not prove the element is indeed in the dict... ";

%feature("docstring")  gdcm::Tag::Read "std::istream&
gdcm::Tag::Read(std::istream &is)

Read a tag from binary representation. ";

%feature("docstring")  gdcm::Tag::ReadFromCommaSeparatedString "void
gdcm::Tag::ReadFromCommaSeparatedString(const char *str)

Read from a comma separated string. This is a highly user oriented
function, the string should be formated as: 1234,5678 to specify the
tag (0x1234,0x5678) The notation comes from the DICOM standard, and is
handy to use from a command line program ";

%feature("docstring")  gdcm::Tag::SetElement "void
gdcm::Tag::SetElement(uint16_t element)

Sets the 'Element number' of the given Tag. ";

%feature("docstring")  gdcm::Tag::SetElementTag "void
gdcm::Tag::SetElementTag(uint32_t tag)

Sets the full tag value of the given Tag. ";

%feature("docstring")  gdcm::Tag::SetElementTag "void
gdcm::Tag::SetElementTag(uint16_t group, uint16_t element)

Sets the 'Group number' & 'Element number' of the given Tag. ";

%feature("docstring")  gdcm::Tag::SetGroup "void
gdcm::Tag::SetGroup(uint16_t group)

Sets the 'Group number' of the given Tag. ";

%feature("docstring")  gdcm::Tag::SetPrivateCreator "void
gdcm::Tag::SetPrivateCreator(Tag const &t)

Set private creator:. ";

%feature("docstring")  gdcm::Tag::Tag "gdcm::Tag::Tag(const Tag
&_val) ";

%feature("docstring")  gdcm::Tag::Tag "gdcm::Tag::Tag(uint32_t tag=0)

Constructor with 1*uint32_t Prefer the cstor that takes two uint16_t.
";

%feature("docstring")  gdcm::Tag::Tag "gdcm::Tag::Tag(uint16_t group,
uint16_t element)

Constructor with 2*uint16_t. ";

%feature("docstring")  gdcm::Tag::Write "const std::ostream&
gdcm::Tag::Write(std::ostream &os) const

Write a tag in binary rep. ";


// File: classgdcm_1_1TagPath.xml
%feature("docstring") gdcm::TagPath "

class to handle a path of tag.

Any Resemblance to Existing XPath is Purely Coincidental

C++ includes: gdcmTagPath.h ";

%feature("docstring")  gdcm::TagPath::ConstructFromString "void
gdcm::TagPath::ConstructFromString(const char *path)

\"/0018,0018/\"... No space allowed, comma is use to separate tag
group from tag element and slash is used to separate tag throw an
error if invalid ";

%feature("docstring")  gdcm::TagPath::ConstructFromTagList "void
gdcm::TagPath::ConstructFromTagList(Tag const *l, unsigned int n)

Construct from a list of tags. ";

%feature("docstring")  gdcm::TagPath::Print "void
gdcm::TagPath::Print(std::ostream &) const ";

%feature("docstring")  gdcm::TagPath::Push "void
gdcm::TagPath::Push(unsigned int itemnum) ";

%feature("docstring")  gdcm::TagPath::Push "void
gdcm::TagPath::Push(Tag const &t) ";

%feature("docstring")  gdcm::TagPath::TagPath "gdcm::TagPath::TagPath() ";

%feature("docstring")  gdcm::TagPath::~TagPath "gdcm::TagPath::~TagPath() ";


// File: classgdcm_1_1Testing.xml
%feature("docstring") gdcm::Testing "

class for testing

this class is used for the nightly regression system for GDCM It makes
heavily use of md5 computation

C++ includes: gdcmTesting.h ";

%feature("docstring")  gdcm::Testing::Print "void
gdcm::Testing::Print(std::ostream &os=std::cout)

Print. ";

%feature("docstring")  gdcm::Testing::Testing "gdcm::Testing::Testing() ";

%feature("docstring")  gdcm::Testing::~Testing "gdcm::Testing::~Testing() ";


// File: classgdcm_1_1Trace.xml
%feature("docstring") gdcm::Trace "

Trace.

Debug / Warning and Error are encapsulated in this class

C++ includes: gdcmTrace.h ";

%feature("docstring")  gdcm::Trace::Trace "gdcm::Trace::Trace() ";

%feature("docstring")  gdcm::Trace::~Trace "gdcm::Trace::~Trace() ";


// File: classgdcm_1_1TransferSyntax.xml
%feature("docstring") gdcm::TransferSyntax "

Class to manipulate Transfer Syntax.

TRANSFER SYNTAX (Standard and Private): A set of encoding rules that
allow Application Entities to unambiguously negotiate the encoding
techniques (e.g., Data Element structure, byte ordering, compression)
they are able to support, thereby allowing these Application Entities
to communicate. Todo : The implementation is completely retarded ->
see gdcm::UIDs for a replacement We need: IsSupported We need
preprocess of raw/xml file We need GetFullName() Need a notion of
Private Syntax. As defined in Ps 3.5. Section 9.2

C++ includes: gdcmTransferSyntax.h ";

%feature("docstring")  gdcm::TransferSyntax::GetNegociatedType "NegociatedType gdcm::TransferSyntax::GetNegociatedType() const ";

%feature("docstring")  gdcm::TransferSyntax::GetString "const char*
gdcm::TransferSyntax::GetString() const ";

%feature("docstring")  gdcm::TransferSyntax::GetSwapCode "SwapCode
gdcm::TransferSyntax::GetSwapCode() const ";

%feature("docstring")  gdcm::TransferSyntax::IsEncoded "bool
gdcm::TransferSyntax::IsEncoded() const ";

%feature("docstring")  gdcm::TransferSyntax::IsExplicit "bool
gdcm::TransferSyntax::IsExplicit() const ";

%feature("docstring")  gdcm::TransferSyntax::IsImplicit "bool
gdcm::TransferSyntax::IsImplicit() const ";

%feature("docstring")  gdcm::TransferSyntax::IsValid "bool
gdcm::TransferSyntax::IsValid() const ";

%feature("docstring")  gdcm::TransferSyntax::TransferSyntax "gdcm::TransferSyntax::TransferSyntax(TSType
type=ImplicitVRLittleEndian) ";


// File: classgdcm_1_1Type.xml
%feature("docstring") gdcm::Type "

Type.

PS 3.5 7.4 DATA ELEMENT TYPE 7.4.1 TYPE 1 REQUIRED DATA ELEMENTS 7.4.2
TYPE 1C CONDITIONAL DATA ELEMENTS 7.4.3 TYPE 2 REQUIRED DATA ELEMENTS
7.4.4 TYPE 2C CONDITIONAL DATA ELEMENTS 7.4.5 TYPE 3 OPTIONAL DATA
ELEMENTS  The intent of Type 2 Data Elements is to allow a zero length
to be conveyed when the operator or application does not know its
value or has a specific reason for not specifying its value. It is the
intent that the device should support these Data Elements.

C++ includes: gdcmType.h ";

%feature("docstring")  gdcm::Type::Type "gdcm::Type::Type(TypeType
type=UNKNOWN) ";


// File: structgdcm_1_1UI.xml
%feature("docstring") gdcm::UI "C++ includes: gdcmVR.h ";


// File: classgdcm_1_1UIDGenerator.xml
%feature("docstring") gdcm::UIDGenerator "

Class for generating unique UID.

bla Usage: When constructing a Series or Study UID, user *has* to keep
around the UID, otherwise the UID Generator will simply forget the
value and create a new UID.

C++ includes: gdcmUIDGenerator.h ";

%feature("docstring")  gdcm::UIDGenerator::Generate "const char*
gdcm::UIDGenerator::Generate()

Internally uses a std::string, so two calls have the same pointer !
save into a std::string In summary do not write code like that: const
char *uid1 = uid.Generate(); const char *uid2 = uid.Generate(); since
uid1 == uid2 ";

%feature("docstring")  gdcm::UIDGenerator::UIDGenerator "gdcm::UIDGenerator::UIDGenerator()

By default the root of a UID is a GDCM Root... ";


// File: classgdcm_1_1UIDs.xml
%feature("docstring") gdcm::UIDs "

all known uids

C++ includes: gdcmUIDs.h ";

%feature("docstring")  gdcm::UIDs::GetName "const char*
gdcm::UIDs::GetName() const ";

%feature("docstring")  gdcm::UIDs::SetFromUID "bool
gdcm::UIDs::SetFromUID(const char *str) ";


// File: classstd_1_1underflow__error.xml
%feature("docstring") std::underflow_error "

STL class. ";


// File: classgdcm_1_1UNExplicitDataElement.xml
%feature("docstring") gdcm::UNExplicitDataElement "

Class to read/write a DataElement as UNExplicit Data Element.

bla

C++ includes: gdcmUNExplicitDataElement.h ";

%feature("docstring")  gdcm::UNExplicitDataElement::GetLength "VL
gdcm::UNExplicitDataElement::GetLength() const ";

%feature("docstring")  gdcm::UNExplicitDataElement::Read "std::istream& gdcm::UNExplicitDataElement::Read(std::istream &is) ";

%feature("docstring")  gdcm::UNExplicitDataElement::ReadWithLength "std::istream& gdcm::UNExplicitDataElement::ReadWithLength(std::istream
&is, VL &length) ";


// File: classgdcm_1_1UNExplicitImplicitDataElement.xml
%feature("docstring") gdcm::UNExplicitImplicitDataElement "

Class to read/write a DataElement as ExplicitImplicit Data Element
This class gather two known bugs: 1. GDCM 1.2.0 would rewrite VR=UN
Value Length on 2 bytes instead of 4 bytes 2. GDCM 1.2.0 would also
rewrite DataElement as Implicit when the VR would not be known this
would only happen in some very rare cases. gdcm 2.X design could
handle bug #1 or #2 exclusively, this class can now handle file which
have both issues. See: gdcmData/TheralysGDCM120Bug.dcm.

C++ includes: gdcmUNExplicitImplicitDataElement.h ";

%feature("docstring")  gdcm::UNExplicitImplicitDataElement::GetLength
"VL gdcm::UNExplicitImplicitDataElement::GetLength() const ";

%feature("docstring")  gdcm::UNExplicitImplicitDataElement::Read "std::istream& gdcm::UNExplicitImplicitDataElement::Read(std::istream
&is) ";


// File: classgdcm_1_1Unpacker12Bits.xml
%feature("docstring") gdcm::Unpacker12Bits "

Pack/Unpack 12 bits pixel into 16bits You can only pack an even number
of 16bits, which means a multiple of 4 (expressed in bytes)

You can only unpack a multiple of 3 bytes.

C++ includes: gdcmUnpacker12Bits.h ";


// File: classstd_1_1valarray.xml
%feature("docstring") std::valarray "

STL class. ";


// File: classgdcm_1_1Validate.xml
%feature("docstring") gdcm::Validate "

Validate class.

C++ includes: gdcmValidate.h ";

%feature("docstring")  gdcm::Validate::GetValidatedFile "const File&
gdcm::Validate::GetValidatedFile() ";

%feature("docstring")  gdcm::Validate::SetFile "void
gdcm::Validate::SetFile(File const &f) ";

%feature("docstring")  gdcm::Validate::Validate "gdcm::Validate::Validate() ";

%feature("docstring")  gdcm::Validate::Validation "void
gdcm::Validate::Validation() ";

%feature("docstring")  gdcm::Validate::~Validate "gdcm::Validate::~Validate() ";


// File: classgdcm_1_1Value.xml
%feature("docstring") gdcm::Value "

Class to represent the value of a Data Element.

VALUE: A component of a Value Field. A Value Field may consist of one
or more of these components.

C++ includes: gdcmValue.h ";

%feature("docstring")  gdcm::Value::Clear "virtual void
gdcm::Value::Clear()=0 ";

%feature("docstring")  gdcm::Value::GetLength "virtual VL
gdcm::Value::GetLength() const=0 ";

%feature("docstring")  gdcm::Value::SetLength "virtual void
gdcm::Value::SetLength(VL l)=0 ";

%feature("docstring")  gdcm::Value::Value "gdcm::Value::Value() ";

%feature("docstring")  gdcm::Value::~Value "gdcm::Value::~Value() ";


// File: classgdcm_1_1ValueIO.xml
%feature("docstring") gdcm::ValueIO "

Class to represent the value of a Data Element.

VALUE: A component of a Value Field. A Value Field may consist of one
or more of these components.

C++ includes: gdcmValueIO.h ";


// File: classstd_1_1vector.xml
%feature("docstring") std::vector "

STL class. ";


// File: classstd_1_1vector_1_1const__iterator.xml
%feature("docstring") std::vector::const_iterator "

STL iterator class. ";


// File: classstd_1_1vector_1_1const__reverse__iterator.xml
%feature("docstring") std::vector::const_reverse_iterator "

STL iterator class. ";


// File: classstd_1_1vector_1_1iterator.xml
%feature("docstring") std::vector::iterator "

STL iterator class. ";


// File: classstd_1_1vector_1_1reverse__iterator.xml
%feature("docstring") std::vector::reverse_iterator "

STL iterator class. ";


// File: classgdcm_1_1Version.xml
%feature("docstring") gdcm::Version "

major/minor and build version

C++ includes: gdcmVersion.h ";


// File: classgdcm_1_1VL.xml
%feature("docstring") gdcm::VL "

Value Length.

WARNING:  this is a 4bytes value ! Do not try to use it for 2bytes
value length

C++ includes: gdcmVL.h ";

%feature("docstring")  gdcm::VL::GetLength "VL gdcm::VL::GetLength()
const ";

%feature("docstring")  gdcm::VL::IsOdd "bool gdcm::VL::IsOdd() const
";

%feature("docstring")  gdcm::VL::IsUndefined "bool
gdcm::VL::IsUndefined() const ";

%feature("docstring")  gdcm::VL::Read "std::istream&
gdcm::VL::Read(std::istream &is) ";

%feature("docstring")  gdcm::VL::Read16 "std::istream&
gdcm::VL::Read16(std::istream &is) ";

%feature("docstring")  gdcm::VL::SetToUndefined "void
gdcm::VL::SetToUndefined() ";

%feature("docstring")  gdcm::VL::VL "gdcm::VL::VL(uint32_t vl=0) ";

%feature("docstring")  gdcm::VL::Write "const std::ostream&
gdcm::VL::Write(std::ostream &os) const ";

%feature("docstring")  gdcm::VL::Write16 "const std::ostream&
gdcm::VL::Write16(std::ostream &os) const ";


// File: classgdcm_1_1VM.xml
%feature("docstring") gdcm::VM "

Value Multiplicity Looking at the DICOMV3 dict only there is very few
cases: 1 2 3 4 5 6 8 16 24 1-2 1-3 1-8 1-32 1-99 1-n 2-2n 2-n 3-3n
3-n.

Some private dict define some more: 4-4n 1-4 1-5 256 9 3-4

even more:

7-7n 10 18 12 35 47_47n 30_30n 28

6-6n

C++ includes: gdcmVM.h ";

%feature("docstring")  gdcm::VM::Compatible "bool
gdcm::VM::Compatible(VM const &vm) const

WARNING: Implementation deficiency The Compatible function is poorly
implemented, the reference vm should be coming from the dictionary,
while the passed in value is the value guess from the file. ";

%feature("docstring")  gdcm::VM::GetLength "unsigned int
gdcm::VM::GetLength() const ";

%feature("docstring")  gdcm::VM::VM "gdcm::VM::VM(VMType type=VM0) ";


// File: classgdcm_1_1VR.xml
%feature("docstring") gdcm::VR "

VR class This is adapted from DICOM standard The biggest difference is
the INVALID VR and the composite one that differ from standard (more
like an addition) This allow us to represent all the possible case
express in the DICOMV3 dict.

VALUE REPRESENTATION ( VR) Specifies the data type and format of the
Value(s) contained in the Value Field of a Data Element. VALUE
REPRESENTATION FIELD: The field where the Value Representation of a
Data Element is stored in the encoding of a Data Element structure
with explicit VR.

C++ includes: gdcmVR.h ";

%feature("docstring")  gdcm::VR::Compatible "bool
gdcm::VR::Compatible(VR const &vr) const ";

%feature("docstring")  gdcm::VR::GetLength "int gdcm::VR::GetLength()
const ";

%feature("docstring")  gdcm::VR::GetSize "unsigned int
gdcm::VR::GetSize() const ";

%feature("docstring")  gdcm::VR::GetSizeof "unsigned int
gdcm::VR::GetSizeof() const ";

%feature("docstring")  gdcm::VR::IsDual "bool gdcm::VR::IsDual()
const ";

%feature("docstring")  gdcm::VR::IsVRFile "bool gdcm::VR::IsVRFile()
const ";

%feature("docstring")  gdcm::VR::Read "std::istream&
gdcm::VR::Read(std::istream &is) ";

%feature("docstring")  gdcm::VR::VR "gdcm::VR::VR(VRType vr=INVALID)
";

%feature("docstring")  gdcm::VR::Write "const std::ostream&
gdcm::VR::Write(std::ostream &os) const ";


// File: classgdcm_1_1VR16ExplicitDataElement.xml
%feature("docstring") gdcm::VR16ExplicitDataElement "

Class to read/write a DataElement as Explicit Data Element.

This class support 16 bits when finding an unkown VR: For instance:
Siemens_CT_Sensation64_has_VR_RT.dcm

C++ includes: gdcmVR16ExplicitDataElement.h ";

%feature("docstring")  gdcm::VR16ExplicitDataElement::GetLength "VL
gdcm::VR16ExplicitDataElement::GetLength() const ";

%feature("docstring")  gdcm::VR16ExplicitDataElement::Read "std::istream& gdcm::VR16ExplicitDataElement::Read(std::istream &is) ";

%feature("docstring")  gdcm::VR16ExplicitDataElement::ReadWithLength "std::istream&
gdcm::VR16ExplicitDataElement::ReadWithLength(std::istream &is, VL
&length) ";


// File: classgdcm_1_1VRVLSize_3_010_01_4.xml
%feature("docstring") gdcm::VRVLSize< 0 > " C++ includes:
gdcmAttribute.h ";


// File: classgdcm_1_1VRVLSize_3_011_01_4.xml
%feature("docstring") gdcm::VRVLSize< 1 > " C++ includes:
gdcmAttribute.h ";


// File: classvtkGDCMImageReader.xml
%feature("docstring") vtkGDCMImageReader "C++ includes:
vtkGDCMImageReader.h ";

%feature("docstring")  vtkGDCMImageReader::CanReadFile "virtual int
vtkGDCMImageReader::CanReadFile(const char *fname) ";

%feature("docstring")  vtkGDCMImageReader::GetDescriptiveName "virtual const char* vtkGDCMImageReader::GetDescriptiveName() ";

%feature("docstring")  vtkGDCMImageReader::GetFileExtensions "virtual
const char* vtkGDCMImageReader::GetFileExtensions() ";

%feature("docstring")  vtkGDCMImageReader::GetIconImage "vtkImageData* vtkGDCMImageReader::GetIconImage() ";

%feature("docstring")  vtkGDCMImageReader::GetOverlay "vtkImageData*
vtkGDCMImageReader::GetOverlay(int i) ";

%feature("docstring")  vtkGDCMImageReader::PrintSelf "virtual void
vtkGDCMImageReader::PrintSelf(ostream &os, vtkIndent indent) ";

%feature("docstring")  vtkGDCMImageReader::SetCurve "virtual void
vtkGDCMImageReader::SetCurve(vtkPolyData *pd) ";

%feature("docstring")  vtkGDCMImageReader::SetFileNames "virtual void
vtkGDCMImageReader::SetFileNames(vtkStringArray *) ";

%feature("docstring")  vtkGDCMImageReader::vtkBooleanMacro "int
vtkGDCMImageReader::vtkBooleanMacro(ApplyYBRToRGB, int) ";

%feature("docstring")  vtkGDCMImageReader::vtkBooleanMacro "vtkGDCMImageReader::vtkBooleanMacro(ApplyLookupTable, int) ";

%feature("docstring")  vtkGDCMImageReader::vtkBooleanMacro "vtkGDCMImageReader::vtkBooleanMacro(LoadIconImage, int) ";

%feature("docstring")  vtkGDCMImageReader::vtkBooleanMacro "vtkGDCMImageReader::vtkBooleanMacro(LoadOverlays, int) ";

%feature("docstring")  vtkGDCMImageReader::vtkGetMacro "vtkGDCMImageReader::vtkGetMacro(Scale, double) ";

%feature("docstring")  vtkGDCMImageReader::vtkGetMacro "vtkGDCMImageReader::vtkGetMacro(Shift, double) ";

%feature("docstring")  vtkGDCMImageReader::vtkGetMacro "vtkGDCMImageReader::vtkGetMacro(PlanarConfiguration, int) ";

%feature("docstring")  vtkGDCMImageReader::vtkGetMacro "vtkGDCMImageReader::vtkGetMacro(ImageFormat, int) ";

%feature("docstring")  vtkGDCMImageReader::vtkGetMacro "vtkGDCMImageReader::vtkGetMacro(ApplyYBRToRGB, int)
vtkSetMacro(ApplyYBRToRGB ";

%feature("docstring")  vtkGDCMImageReader::vtkGetMacro "vtkGDCMImageReader::vtkGetMacro(ApplyLookupTable, int) ";

%feature("docstring")  vtkGDCMImageReader::vtkGetMacro "vtkGDCMImageReader::vtkGetMacro(NumberOfIconImages, int) ";

%feature("docstring")  vtkGDCMImageReader::vtkGetMacro "vtkGDCMImageReader::vtkGetMacro(NumberOfOverlays, int) ";

%feature("docstring")  vtkGDCMImageReader::vtkGetMacro "vtkGDCMImageReader::vtkGetMacro(LoadIconImage, int) ";

%feature("docstring")  vtkGDCMImageReader::vtkGetMacro "vtkGDCMImageReader::vtkGetMacro(LoadOverlays, int) ";

%feature("docstring")  vtkGDCMImageReader::vtkGetObjectMacro "vtkGDCMImageReader::vtkGetObjectMacro(Curve, vtkPolyData) ";

%feature("docstring")  vtkGDCMImageReader::vtkGetObjectMacro "vtkGDCMImageReader::vtkGetObjectMacro(FileNames, vtkStringArray) ";

%feature("docstring")  vtkGDCMImageReader::vtkGetObjectMacro "vtkGDCMImageReader::vtkGetObjectMacro(MedicalImageProperties,
vtkMedicalImageProperties) ";

%feature("docstring")  vtkGDCMImageReader::vtkGetObjectMacro "vtkGDCMImageReader::vtkGetObjectMacro(DirectionCosines, vtkMatrix4x4)
";

%feature("docstring")  vtkGDCMImageReader::vtkGetVector3Macro "vtkGDCMImageReader::vtkGetVector3Macro(ImagePositionPatient, double)
";

%feature("docstring")  vtkGDCMImageReader::vtkGetVector6Macro "vtkGDCMImageReader::vtkGetVector6Macro(ImageOrientationPatient,
double) ";

%feature("docstring")  vtkGDCMImageReader::vtkSetMacro "vtkGDCMImageReader::vtkSetMacro(ApplyLookupTable, int) ";

%feature("docstring")  vtkGDCMImageReader::vtkSetMacro "vtkGDCMImageReader::vtkSetMacro(LoadIconImage, int) ";

%feature("docstring")  vtkGDCMImageReader::vtkSetMacro "vtkGDCMImageReader::vtkSetMacro(LoadOverlays, int) ";

%feature("docstring")  vtkGDCMImageReader::vtkTypeRevisionMacro "vtkGDCMImageReader::vtkTypeRevisionMacro(vtkGDCMImageReader,
vtkMedicalImageReader2) ";


// File: classvtkGDCMImageWriter.xml
%feature("docstring") vtkGDCMImageWriter "C++ includes:
vtkGDCMImageWriter.h ";

%feature("docstring")  vtkGDCMImageWriter::GetDescriptiveName "virtual const char* vtkGDCMImageWriter::GetDescriptiveName() ";

%feature("docstring")  vtkGDCMImageWriter::GetFileExtensions "virtual
const char* vtkGDCMImageWriter::GetFileExtensions() ";

%feature("docstring")  vtkGDCMImageWriter::PrintSelf "virtual void
vtkGDCMImageWriter::PrintSelf(ostream &os, vtkIndent indent) ";

%feature("docstring")  vtkGDCMImageWriter::SetDirectionCosines "virtual void vtkGDCMImageWriter::SetDirectionCosines(vtkMatrix4x4
*matrix) ";

%feature("docstring")  vtkGDCMImageWriter::SetFileNames "virtual void
vtkGDCMImageWriter::SetFileNames(vtkStringArray *) ";

%feature("docstring")  vtkGDCMImageWriter::SetMedicalImageProperties "virtual void
vtkGDCMImageWriter::SetMedicalImageProperties(vtkMedicalImageProperties
*) ";

%feature("docstring")  vtkGDCMImageWriter::vtkBooleanMacro "vtkGDCMImageWriter::vtkBooleanMacro(FileLowerLeft, int) ";

%feature("docstring")  vtkGDCMImageWriter::vtkGetMacro "vtkGDCMImageWriter::vtkGetMacro(FileLowerLeft, int) ";

%feature("docstring")  vtkGDCMImageWriter::vtkGetMacro "vtkGDCMImageWriter::vtkGetMacro(ImageFormat, int) ";

%feature("docstring")  vtkGDCMImageWriter::vtkGetMacro "vtkGDCMImageWriter::vtkGetMacro(Scale, double) ";

%feature("docstring")  vtkGDCMImageWriter::vtkGetMacro "vtkGDCMImageWriter::vtkGetMacro(Shift, double) ";

%feature("docstring")  vtkGDCMImageWriter::vtkGetObjectMacro "vtkGDCMImageWriter::vtkGetObjectMacro(DirectionCosines, vtkMatrix4x4)
";

%feature("docstring")  vtkGDCMImageWriter::vtkGetObjectMacro "vtkGDCMImageWriter::vtkGetObjectMacro(FileNames, vtkStringArray) ";

%feature("docstring")  vtkGDCMImageWriter::vtkGetObjectMacro "vtkGDCMImageWriter::vtkGetObjectMacro(MedicalImageProperties,
vtkMedicalImageProperties) ";

%feature("docstring")  vtkGDCMImageWriter::vtkSetMacro "vtkGDCMImageWriter::vtkSetMacro(PlanarConfiguration, int) ";

%feature("docstring")  vtkGDCMImageWriter::vtkSetMacro "vtkGDCMImageWriter::vtkSetMacro(FileLowerLeft, int) ";

%feature("docstring")  vtkGDCMImageWriter::vtkSetMacro "vtkGDCMImageWriter::vtkSetMacro(ImageFormat, int) ";

%feature("docstring")  vtkGDCMImageWriter::vtkSetMacro "vtkGDCMImageWriter::vtkSetMacro(Scale, double) ";

%feature("docstring")  vtkGDCMImageWriter::vtkSetMacro "vtkGDCMImageWriter::vtkSetMacro(Shift, double) ";

%feature("docstring")  vtkGDCMImageWriter::vtkTypeRevisionMacro "vtkGDCMImageWriter::vtkTypeRevisionMacro(vtkGDCMImageWriter,
vtkImageWriter) ";

%feature("docstring")  vtkGDCMImageWriter::Write "virtual void
vtkGDCMImageWriter::Write() ";


// File: classvtkGDCMPolyDataReader.xml
%feature("docstring") vtkGDCMPolyDataReader "C++ includes:
vtkGDCMPolyDataReader.h ";

%feature("docstring")  vtkGDCMPolyDataReader::PrintSelf "virtual void
vtkGDCMPolyDataReader::PrintSelf(ostream &os, vtkIndent indent) ";

%feature("docstring")  vtkGDCMPolyDataReader::vtkGetObjectMacro "vtkGDCMPolyDataReader::vtkGetObjectMacro(MedicalImageProperties,
vtkMedicalImageProperties) ";

%feature("docstring")  vtkGDCMPolyDataReader::vtkGetStringMacro "vtkGDCMPolyDataReader::vtkGetStringMacro(FileName) ";

%feature("docstring")  vtkGDCMPolyDataReader::vtkSetStringMacro "vtkGDCMPolyDataReader::vtkSetStringMacro(FileName) ";

%feature("docstring")  vtkGDCMPolyDataReader::vtkTypeRevisionMacro "vtkGDCMPolyDataReader::vtkTypeRevisionMacro(vtkGDCMPolyDataReader,
vtkPolyDataAlgorithm) ";


// File: classvtkGDCMThreadedImageReader.xml
%feature("docstring") vtkGDCMThreadedImageReader "C++ includes:
vtkGDCMThreadedImageReader.h ";

%feature("docstring")  vtkGDCMThreadedImageReader::PrintSelf "virtual
void vtkGDCMThreadedImageReader::PrintSelf(ostream &os, vtkIndent
indent) ";

%feature("docstring")  vtkGDCMThreadedImageReader::vtkBooleanMacro "vtkGDCMThreadedImageReader::vtkBooleanMacro(UseShiftScale, int) ";

%feature("docstring")  vtkGDCMThreadedImageReader::vtkGetMacro "vtkGDCMThreadedImageReader::vtkGetMacro(UseShiftScale, int) ";

%feature("docstring")  vtkGDCMThreadedImageReader::vtkSetMacro "vtkGDCMThreadedImageReader::vtkSetMacro(UseShiftScale, int) ";

%feature("docstring")  vtkGDCMThreadedImageReader::vtkSetMacro "vtkGDCMThreadedImageReader::vtkSetMacro(Scale, double) ";

%feature("docstring")  vtkGDCMThreadedImageReader::vtkSetMacro "vtkGDCMThreadedImageReader::vtkSetMacro(Shift, double) ";

%feature("docstring")
vtkGDCMThreadedImageReader::vtkTypeRevisionMacro "vtkGDCMThreadedImageReader::vtkTypeRevisionMacro(vtkGDCMThreadedImageReader,
vtkGDCMImageReader) ";


// File: classvtkGDCMThreadedImageReader2.xml
%feature("docstring") vtkGDCMThreadedImageReader2 "C++ includes:
vtkGDCMThreadedImageReader2.h ";

%feature("docstring")  vtkGDCMThreadedImageReader2::GetFileName "virtual const char* vtkGDCMThreadedImageReader2::GetFileName(int i=0)
";

%feature("docstring")  vtkGDCMThreadedImageReader2::PrintSelf "virtual void vtkGDCMThreadedImageReader2::PrintSelf(ostream &os,
vtkIndent indent) ";

%feature("docstring")  vtkGDCMThreadedImageReader2::SetFileName "virtual void vtkGDCMThreadedImageReader2::SetFileName(const char
*filename) ";

%feature("docstring")  vtkGDCMThreadedImageReader2::SetFileNames "virtual void vtkGDCMThreadedImageReader2::SetFileNames(vtkStringArray
*) ";

%feature("docstring")  vtkGDCMThreadedImageReader2::SplitExtent "int
vtkGDCMThreadedImageReader2::SplitExtent(int splitExt[6], int
startExt[6], int num, int total) ";

%feature("docstring")  vtkGDCMThreadedImageReader2::vtkBooleanMacro "vtkGDCMThreadedImageReader2::vtkBooleanMacro(UseShiftScale, int) ";

%feature("docstring")  vtkGDCMThreadedImageReader2::vtkBooleanMacro "vtkGDCMThreadedImageReader2::vtkBooleanMacro(LoadOverlays, int) ";

%feature("docstring")  vtkGDCMThreadedImageReader2::vtkBooleanMacro "vtkGDCMThreadedImageReader2::vtkBooleanMacro(FileLowerLeft, int) ";

%feature("docstring")  vtkGDCMThreadedImageReader2::vtkGetMacro "vtkGDCMThreadedImageReader2::vtkGetMacro(UseShiftScale, int) ";

%feature("docstring")  vtkGDCMThreadedImageReader2::vtkGetMacro "vtkGDCMThreadedImageReader2::vtkGetMacro(Scale, double) ";

%feature("docstring")  vtkGDCMThreadedImageReader2::vtkGetMacro "vtkGDCMThreadedImageReader2::vtkGetMacro(Shift, double) ";

%feature("docstring")  vtkGDCMThreadedImageReader2::vtkGetMacro "vtkGDCMThreadedImageReader2::vtkGetMacro(LoadOverlays, int) ";

%feature("docstring")  vtkGDCMThreadedImageReader2::vtkGetMacro "vtkGDCMThreadedImageReader2::vtkGetMacro(NumberOfScalarComponents,
int) ";

%feature("docstring")  vtkGDCMThreadedImageReader2::vtkGetMacro "vtkGDCMThreadedImageReader2::vtkGetMacro(DataScalarType, int) ";

%feature("docstring")  vtkGDCMThreadedImageReader2::vtkGetMacro "vtkGDCMThreadedImageReader2::vtkGetMacro(NumberOfOverlays, int) ";

%feature("docstring")  vtkGDCMThreadedImageReader2::vtkGetMacro "vtkGDCMThreadedImageReader2::vtkGetMacro(FileLowerLeft, int) ";

%feature("docstring")  vtkGDCMThreadedImageReader2::vtkGetObjectMacro
"vtkGDCMThreadedImageReader2::vtkGetObjectMacro(FileNames,
vtkStringArray) ";

%feature("docstring")  vtkGDCMThreadedImageReader2::vtkGetVector3Macro
"vtkGDCMThreadedImageReader2::vtkGetVector3Macro(DataSpacing, double)
";

%feature("docstring")  vtkGDCMThreadedImageReader2::vtkGetVector3Macro
"vtkGDCMThreadedImageReader2::vtkGetVector3Macro(DataOrigin, double)
";

%feature("docstring")  vtkGDCMThreadedImageReader2::vtkGetVector6Macro
"vtkGDCMThreadedImageReader2::vtkGetVector6Macro(DataExtent, int) ";

%feature("docstring")  vtkGDCMThreadedImageReader2::vtkSetMacro "vtkGDCMThreadedImageReader2::vtkSetMacro(UseShiftScale, int) ";

%feature("docstring")  vtkGDCMThreadedImageReader2::vtkSetMacro "vtkGDCMThreadedImageReader2::vtkSetMacro(Scale, double) ";

%feature("docstring")  vtkGDCMThreadedImageReader2::vtkSetMacro "vtkGDCMThreadedImageReader2::vtkSetMacro(Shift, double) ";

%feature("docstring")  vtkGDCMThreadedImageReader2::vtkSetMacro "vtkGDCMThreadedImageReader2::vtkSetMacro(LoadOverlays, int) ";

%feature("docstring")  vtkGDCMThreadedImageReader2::vtkSetMacro "vtkGDCMThreadedImageReader2::vtkSetMacro(NumberOfScalarComponents,
int) ";

%feature("docstring")  vtkGDCMThreadedImageReader2::vtkSetMacro "vtkGDCMThreadedImageReader2::vtkSetMacro(DataScalarType, int) ";

%feature("docstring")  vtkGDCMThreadedImageReader2::vtkSetMacro "vtkGDCMThreadedImageReader2::vtkSetMacro(FileLowerLeft, int) ";

%feature("docstring")  vtkGDCMThreadedImageReader2::vtkSetVector3Macro
"vtkGDCMThreadedImageReader2::vtkSetVector3Macro(DataSpacing, double)
";

%feature("docstring")  vtkGDCMThreadedImageReader2::vtkSetVector3Macro
"vtkGDCMThreadedImageReader2::vtkSetVector3Macro(DataOrigin, double)
";

%feature("docstring")  vtkGDCMThreadedImageReader2::vtkSetVector6Macro
"vtkGDCMThreadedImageReader2::vtkSetVector6Macro(DataExtent, int) ";

%feature("docstring")
vtkGDCMThreadedImageReader2::vtkTypeRevisionMacro "vtkGDCMThreadedImageReader2::vtkTypeRevisionMacro(vtkGDCMThreadedImageReader2,
vtkThreadedImageAlgorithm) ";


// File: classvtkImageColorViewer.xml
%feature("docstring") vtkImageColorViewer "C++ includes:
vtkImageColorViewer.h ";

%feature("docstring")  vtkImageColorViewer::AddInput "virtual void
vtkImageColorViewer::AddInput(vtkImageData *input) ";

%feature("docstring")  vtkImageColorViewer::AddInputConnection "virtual void
vtkImageColorViewer::AddInputConnection(vtkAlgorithmOutput *input) ";

%feature("docstring")  vtkImageColorViewer::GetColorLevel "virtual
double vtkImageColorViewer::GetColorLevel() ";

%feature("docstring")  vtkImageColorViewer::GetColorWindow "virtual
double vtkImageColorViewer::GetColorWindow() ";

%feature("docstring")  vtkImageColorViewer::GetInput "virtual
vtkImageData* vtkImageColorViewer::GetInput() ";

%feature("docstring")  vtkImageColorViewer::GetOffScreenRendering "virtual int vtkImageColorViewer::GetOffScreenRendering() ";

%feature("docstring")  vtkImageColorViewer::GetOverlayVisibility "double vtkImageColorViewer::GetOverlayVisibility() ";

%feature("docstring")  vtkImageColorViewer::GetPosition "virtual int*
vtkImageColorViewer::GetPosition() ";

%feature("docstring")  vtkImageColorViewer::GetSize "virtual int*
vtkImageColorViewer::GetSize() ";

%feature("docstring")  vtkImageColorViewer::GetSliceMax "virtual int
vtkImageColorViewer::GetSliceMax() ";

%feature("docstring")  vtkImageColorViewer::GetSliceMin "virtual int
vtkImageColorViewer::GetSliceMin() ";

%feature("docstring")  vtkImageColorViewer::GetSliceRange "virtual
int* vtkImageColorViewer::GetSliceRange() ";

%feature("docstring")  vtkImageColorViewer::GetSliceRange "virtual
void vtkImageColorViewer::GetSliceRange(int &min, int &max) ";

%feature("docstring")  vtkImageColorViewer::GetSliceRange "virtual
void vtkImageColorViewer::GetSliceRange(int range[2]) ";

%feature("docstring")  vtkImageColorViewer::GetWindowName "virtual
const char* vtkImageColorViewer::GetWindowName() ";

%feature("docstring")  vtkImageColorViewer::PrintSelf "void
vtkImageColorViewer::PrintSelf(ostream &os, vtkIndent indent) ";

%feature("docstring")  vtkImageColorViewer::Render "virtual void
vtkImageColorViewer::Render(void) ";

%feature("docstring")  vtkImageColorViewer::SetColorLevel "virtual
void vtkImageColorViewer::SetColorLevel(double s) ";

%feature("docstring")  vtkImageColorViewer::SetColorWindow "virtual
void vtkImageColorViewer::SetColorWindow(double s) ";

%feature("docstring")  vtkImageColorViewer::SetDisplayId "virtual
void vtkImageColorViewer::SetDisplayId(void *a) ";

%feature("docstring")  vtkImageColorViewer::SetInput "virtual void
vtkImageColorViewer::SetInput(vtkImageData *in) ";

%feature("docstring")  vtkImageColorViewer::SetInputConnection "virtual void
vtkImageColorViewer::SetInputConnection(vtkAlgorithmOutput *input) ";

%feature("docstring")  vtkImageColorViewer::SetOffScreenRendering "virtual void vtkImageColorViewer::SetOffScreenRendering(int) ";

%feature("docstring")  vtkImageColorViewer::SetOverlayVisibility "void vtkImageColorViewer::SetOverlayVisibility(double vis) ";

%feature("docstring")  vtkImageColorViewer::SetParentId "virtual void
vtkImageColorViewer::SetParentId(void *a) ";

%feature("docstring")  vtkImageColorViewer::SetPosition "virtual void
vtkImageColorViewer::SetPosition(int a[2]) ";

%feature("docstring")  vtkImageColorViewer::SetPosition "virtual void
vtkImageColorViewer::SetPosition(int a, int b) ";

%feature("docstring")  vtkImageColorViewer::SetRenderer "virtual void
vtkImageColorViewer::SetRenderer(vtkRenderer *arg) ";

%feature("docstring")  vtkImageColorViewer::SetRenderWindow "virtual
void vtkImageColorViewer::SetRenderWindow(vtkRenderWindow *arg) ";

%feature("docstring")  vtkImageColorViewer::SetSize "virtual void
vtkImageColorViewer::SetSize(int a[2]) ";

%feature("docstring")  vtkImageColorViewer::SetSize "virtual void
vtkImageColorViewer::SetSize(int a, int b) ";

%feature("docstring")  vtkImageColorViewer::SetSlice "virtual void
vtkImageColorViewer::SetSlice(int s) ";

%feature("docstring")  vtkImageColorViewer::SetSliceOrientation "virtual void vtkImageColorViewer::SetSliceOrientation(int orientation)
";

%feature("docstring")  vtkImageColorViewer::SetSliceOrientationToXY "virtual void vtkImageColorViewer::SetSliceOrientationToXY() ";

%feature("docstring")  vtkImageColorViewer::SetSliceOrientationToXZ "virtual void vtkImageColorViewer::SetSliceOrientationToXZ() ";

%feature("docstring")  vtkImageColorViewer::SetSliceOrientationToYZ "virtual void vtkImageColorViewer::SetSliceOrientationToYZ() ";

%feature("docstring")  vtkImageColorViewer::SetupInteractor "virtual
void vtkImageColorViewer::SetupInteractor(vtkRenderWindowInteractor *)
";

%feature("docstring")  vtkImageColorViewer::SetWindowId "virtual void
vtkImageColorViewer::SetWindowId(void *a) ";

%feature("docstring")  vtkImageColorViewer::UpdateDisplayExtent "virtual void vtkImageColorViewer::UpdateDisplayExtent() ";

%feature("docstring")  vtkImageColorViewer::VTK_LEGACY "vtkImageColorViewer::VTK_LEGACY(void SetZSlice(int)) ";

%feature("docstring")  vtkImageColorViewer::VTK_LEGACY "vtkImageColorViewer::VTK_LEGACY(int GetZSlice()) ";

%feature("docstring")  vtkImageColorViewer::VTK_LEGACY "vtkImageColorViewer::VTK_LEGACY(int GetWholeZMax()) ";

%feature("docstring")  vtkImageColorViewer::VTK_LEGACY "vtkImageColorViewer::VTK_LEGACY(int GetWholeZMin()) ";

%feature("docstring")  vtkImageColorViewer::vtkBooleanMacro "vtkImageColorViewer::vtkBooleanMacro(OffScreenRendering, int) ";

%feature("docstring")  vtkImageColorViewer::vtkGetMacro "vtkImageColorViewer::vtkGetMacro(Slice, int) ";

%feature("docstring")  vtkImageColorViewer::vtkGetMacro "vtkImageColorViewer::vtkGetMacro(SliceOrientation, int) ";

%feature("docstring")  vtkImageColorViewer::vtkGetObjectMacro "vtkImageColorViewer::vtkGetObjectMacro(InteractorStyle,
vtkInteractorStyleImage) ";

%feature("docstring")  vtkImageColorViewer::vtkGetObjectMacro "vtkImageColorViewer::vtkGetObjectMacro(WindowLevel,
vtkImageMapToWindowLevelColors2) ";

%feature("docstring")  vtkImageColorViewer::vtkGetObjectMacro "vtkImageColorViewer::vtkGetObjectMacro(ImageActor, vtkImageActor) ";

%feature("docstring")  vtkImageColorViewer::vtkGetObjectMacro "vtkImageColorViewer::vtkGetObjectMacro(Renderer, vtkRenderer) ";

%feature("docstring")  vtkImageColorViewer::vtkGetObjectMacro "vtkImageColorViewer::vtkGetObjectMacro(RenderWindow, vtkRenderWindow)
";

%feature("docstring")  vtkImageColorViewer::vtkTypeRevisionMacro "vtkImageColorViewer::vtkTypeRevisionMacro(vtkImageColorViewer,
vtkObject) ";


// File: classvtkImageMapToColors16.xml
%feature("docstring") vtkImageMapToColors16 "C++ includes:
vtkImageMapToColors16.h ";

%feature("docstring")  vtkImageMapToColors16::GetMTime "virtual
unsigned long vtkImageMapToColors16::GetMTime() ";

%feature("docstring")  vtkImageMapToColors16::PrintSelf "void
vtkImageMapToColors16::PrintSelf(ostream &os, vtkIndent indent) ";

%feature("docstring")  vtkImageMapToColors16::SetLookupTable "virtual
void vtkImageMapToColors16::SetLookupTable(vtkScalarsToColors *) ";

%feature("docstring")
vtkImageMapToColors16::SetOutputFormatToLuminance "void
vtkImageMapToColors16::SetOutputFormatToLuminance() ";

%feature("docstring")
vtkImageMapToColors16::SetOutputFormatToLuminanceAlpha "void
vtkImageMapToColors16::SetOutputFormatToLuminanceAlpha() ";

%feature("docstring")  vtkImageMapToColors16::SetOutputFormatToRGB "void vtkImageMapToColors16::SetOutputFormatToRGB() ";

%feature("docstring")  vtkImageMapToColors16::SetOutputFormatToRGBA "void vtkImageMapToColors16::SetOutputFormatToRGBA() ";

%feature("docstring")  vtkImageMapToColors16::vtkBooleanMacro "vtkImageMapToColors16::vtkBooleanMacro(PassAlphaToOutput, int) ";

%feature("docstring")  vtkImageMapToColors16::vtkGetMacro "vtkImageMapToColors16::vtkGetMacro(PassAlphaToOutput, int) ";

%feature("docstring")  vtkImageMapToColors16::vtkGetMacro "vtkImageMapToColors16::vtkGetMacro(ActiveComponent, int) ";

%feature("docstring")  vtkImageMapToColors16::vtkGetMacro "vtkImageMapToColors16::vtkGetMacro(OutputFormat, int) ";

%feature("docstring")  vtkImageMapToColors16::vtkGetObjectMacro "vtkImageMapToColors16::vtkGetObjectMacro(LookupTable,
vtkScalarsToColors) ";

%feature("docstring")  vtkImageMapToColors16::vtkSetMacro "vtkImageMapToColors16::vtkSetMacro(PassAlphaToOutput, int) ";

%feature("docstring")  vtkImageMapToColors16::vtkSetMacro "vtkImageMapToColors16::vtkSetMacro(ActiveComponent, int) ";

%feature("docstring")  vtkImageMapToColors16::vtkSetMacro "vtkImageMapToColors16::vtkSetMacro(OutputFormat, int) ";

%feature("docstring")  vtkImageMapToColors16::vtkTypeRevisionMacro "vtkImageMapToColors16::vtkTypeRevisionMacro(vtkImageMapToColors16,
vtkThreadedImageAlgorithm) ";


// File: classvtkImageMapToWindowLevelColors2.xml
%feature("docstring") vtkImageMapToWindowLevelColors2 "C++ includes:
vtkImageMapToWindowLevelColors2.h ";

%feature("docstring")  vtkImageMapToWindowLevelColors2::PrintSelf "void vtkImageMapToWindowLevelColors2::PrintSelf(ostream &os, vtkIndent
indent) ";

%feature("docstring")  vtkImageMapToWindowLevelColors2::vtkGetMacro "vtkImageMapToWindowLevelColors2::vtkGetMacro(Level, double) ";

%feature("docstring")  vtkImageMapToWindowLevelColors2::vtkGetMacro "vtkImageMapToWindowLevelColors2::vtkGetMacro(Window, double) ";

%feature("docstring")  vtkImageMapToWindowLevelColors2::vtkSetMacro "vtkImageMapToWindowLevelColors2::vtkSetMacro(Level, double) ";

%feature("docstring")  vtkImageMapToWindowLevelColors2::vtkSetMacro "vtkImageMapToWindowLevelColors2::vtkSetMacro(Window, double) ";

%feature("docstring")
vtkImageMapToWindowLevelColors2::vtkTypeRevisionMacro "vtkImageMapToWindowLevelColors2::vtkTypeRevisionMacro(vtkImageMapToWindowLevelColors2,
vtkImageMapToColors) ";


// File: classvtkImagePlanarComponentsToComponents.xml
%feature("docstring") vtkImagePlanarComponentsToComponents "C++
includes: vtkImagePlanarComponentsToComponents.h ";

%feature("docstring")  vtkImagePlanarComponentsToComponents::PrintSelf
"void vtkImagePlanarComponentsToComponents::PrintSelf(ostream &os,
vtkIndent indent) ";

%feature("docstring")
vtkImagePlanarComponentsToComponents::vtkTypeRevisionMacro "vtkImagePlanarComponentsToComponents::vtkTypeRevisionMacro(vtkImagePlanarComponentsToComponents,
vtkImageAlgorithm) ";


// File: classvtkImageRGBToYBR.xml
%feature("docstring") vtkImageRGBToYBR "C++ includes:
vtkImageRGBToYBR.h ";

%feature("docstring")  vtkImageRGBToYBR::PrintSelf "void
vtkImageRGBToYBR::PrintSelf(ostream &os, vtkIndent indent) ";

%feature("docstring")  vtkImageRGBToYBR::vtkTypeRevisionMacro "vtkImageRGBToYBR::vtkTypeRevisionMacro(vtkImageRGBToYBR,
vtkThreadedImageAlgorithm) ";


// File: classvtkImageYBRToRGB.xml
%feature("docstring") vtkImageYBRToRGB "C++ includes:
vtkImageYBRToRGB.h ";

%feature("docstring")  vtkImageYBRToRGB::PrintSelf "void
vtkImageYBRToRGB::PrintSelf(ostream &os, vtkIndent indent) ";

%feature("docstring")  vtkImageYBRToRGB::vtkTypeRevisionMacro "vtkImageYBRToRGB::vtkTypeRevisionMacro(vtkImageYBRToRGB,
vtkThreadedImageAlgorithm) ";


// File: classvtkLookupTable16.xml
%feature("docstring") vtkLookupTable16 "C++ includes:
vtkLookupTable16.h ";

%feature("docstring")  vtkLookupTable16::Build "void
vtkLookupTable16::Build() ";

%feature("docstring")  vtkLookupTable16::GetPointer "unsigned short*
vtkLookupTable16::GetPointer(const vtkIdType id) ";

%feature("docstring")  vtkLookupTable16::PrintSelf "void
vtkLookupTable16::PrintSelf(ostream &os, vtkIndent indent) ";

%feature("docstring")  vtkLookupTable16::SetNumberOfTableValues "void
vtkLookupTable16::SetNumberOfTableValues(vtkIdType number) ";

%feature("docstring")  vtkLookupTable16::vtkTypeRevisionMacro "vtkLookupTable16::vtkTypeRevisionMacro(vtkLookupTable16,
vtkLookupTable) ";

%feature("docstring")  vtkLookupTable16::WritePointer "unsigned char
* vtkLookupTable16::WritePointer(const vtkIdType id, const int number)
";


// File: classgdcm_1_1Waveform.xml
%feature("docstring") gdcm::Waveform "

Waveform class.

C++ includes: gdcmWaveform.h ";

%feature("docstring")  gdcm::Waveform::Waveform "gdcm::Waveform::Waveform() ";


// File: classstd_1_1wfstream.xml
%feature("docstring") std::wfstream "

STL class. ";


// File: classstd_1_1wifstream.xml
%feature("docstring") std::wifstream "

STL class. ";


// File: classstd_1_1wios.xml
%feature("docstring") std::wios "

STL class. ";


// File: classstd_1_1wistream.xml
%feature("docstring") std::wistream "

STL class. ";


// File: classstd_1_1wistringstream.xml
%feature("docstring") std::wistringstream "

STL class. ";


// File: classstd_1_1wofstream.xml
%feature("docstring") std::wofstream "

STL class. ";


// File: classstd_1_1wostream.xml
%feature("docstring") std::wostream "

STL class. ";


// File: classstd_1_1wostringstream.xml
%feature("docstring") std::wostringstream "

STL class. ";


// File: classgdcm_1_1Writer.xml
%feature("docstring") gdcm::Writer "

Writer ala DOM (Document Object Model) This class is a non-validating
writer, it will only performs well- formedness check only.

Detailled description here To avoid GDCM being yet another broken
DICOM lib we try to be user level and avoid writing illegal stuff (odd
length, non-zero value for Item start/end length ...) Therefore you
cannot (well unless you are really smart) write DICOM with even length
tag. All the checks are consider basics: Correct Meta Information
Header (see gdcm::FileMetaInformation)

Zero value for Item Length (0xfffe, 0xe00d/0xe0dd)

Even length for any elements

Alphabetical order for elements (garanteed by design of internals)

32bits VR will be rewritten with 00

WARNING: gdcm::Writer cannot write a DataSet if no SOP Instance UID
(0008,0018) is found

C++ includes: gdcmWriter.h ";

%feature("docstring")  gdcm::Writer::CheckFileMetaInformationOff "void gdcm::Writer::CheckFileMetaInformationOff() ";

%feature("docstring")  gdcm::Writer::CheckFileMetaInformationOn "void
gdcm::Writer::CheckFileMetaInformationOn() ";

%feature("docstring")  gdcm::Writer::GetFile "File&
gdcm::Writer::GetFile() ";

%feature("docstring")  gdcm::Writer::SetCheckFileMetaInformation "void gdcm::Writer::SetCheckFileMetaInformation(bool b)

Undocumented function, do not use (= leave default). ";

%feature("docstring")  gdcm::Writer::SetFile "void
gdcm::Writer::SetFile(const File &f)

Set/Get the DICOM file ( DataSet + Header). ";

%feature("docstring")  gdcm::Writer::SetFileName "void
gdcm::Writer::SetFileName(const char *filename)

Set the filename of DICOM file to write:. ";

%feature("docstring")  gdcm::Writer::SetStream "void
gdcm::Writer::SetStream(std::ostream &output_stream)

Set user ostream buffer. ";

%feature("docstring")  gdcm::Writer::Write "virtual bool
gdcm::Writer::Write()

Main function to tell the writer to write. ";

%feature("docstring")  gdcm::Writer::Writer "gdcm::Writer::Writer()
";

%feature("docstring")  gdcm::Writer::~Writer "virtual
gdcm::Writer::~Writer() ";


// File: classstd_1_1wstring.xml
%feature("docstring") std::wstring "

STL class. ";


// File: classstd_1_1wstring_1_1const__iterator.xml
%feature("docstring") std::wstring::const_iterator "

STL iterator class. ";


// File: classstd_1_1wstring_1_1const__reverse__iterator.xml
%feature("docstring") std::wstring::const_reverse_iterator "

STL iterator class. ";


// File: classstd_1_1wstring_1_1iterator.xml
%feature("docstring") std::wstring::iterator "

STL iterator class. ";


// File: classstd_1_1wstring_1_1reverse__iterator.xml
%feature("docstring") std::wstring::reverse_iterator "

STL iterator class. ";


// File: classstd_1_1wstringstream.xml
%feature("docstring") std::wstringstream "

STL class. ";


// File: classgdcm_1_1XMLDictReader.xml
%feature("docstring") gdcm::XMLDictReader "

Class for representing a XMLDictReader.

bla Will read the DICOMV3.xml file

C++ includes: gdcmXMLDictReader.h ";

%feature("docstring")  gdcm::XMLDictReader::CharacterDataHandler "void gdcm::XMLDictReader::CharacterDataHandler(const char *data, int
length) ";

%feature("docstring")  gdcm::XMLDictReader::EndElement "void
gdcm::XMLDictReader::EndElement(const char *name) ";

%feature("docstring")  gdcm::XMLDictReader::GetDict "const Dict&
gdcm::XMLDictReader::GetDict() ";

%feature("docstring")  gdcm::XMLDictReader::StartElement "void
gdcm::XMLDictReader::StartElement(const char *name, const char **atts)
";

%feature("docstring")  gdcm::XMLDictReader::XMLDictReader "gdcm::XMLDictReader::XMLDictReader() ";

%feature("docstring")  gdcm::XMLDictReader::~XMLDictReader "gdcm::XMLDictReader::~XMLDictReader() ";


// File: classgdcm_1_1XMLPrivateDictReader.xml
%feature("docstring") gdcm::XMLPrivateDictReader "

Class for representing a XMLPrivateDictReader.

bla Will read the Private.xml file

C++ includes: gdcmXMLPrivateDictReader.h ";

%feature("docstring")
gdcm::XMLPrivateDictReader::CharacterDataHandler "void
gdcm::XMLPrivateDictReader::CharacterDataHandler(const char *data, int
length) ";

%feature("docstring")  gdcm::XMLPrivateDictReader::EndElement "void
gdcm::XMLPrivateDictReader::EndElement(const char *name) ";

%feature("docstring")  gdcm::XMLPrivateDictReader::GetPrivateDict "const PrivateDict& gdcm::XMLPrivateDictReader::GetPrivateDict() ";

%feature("docstring")  gdcm::XMLPrivateDictReader::StartElement "void
gdcm::XMLPrivateDictReader::StartElement(const char *name, const char
**atts) ";

%feature("docstring")
gdcm::XMLPrivateDictReader::XMLPrivateDictReader "gdcm::XMLPrivateDictReader::XMLPrivateDictReader() ";

%feature("docstring")
gdcm::XMLPrivateDictReader::~XMLPrivateDictReader "gdcm::XMLPrivateDictReader::~XMLPrivateDictReader() ";


// File: namespacegdcm.xml
%feature("docstring")  gdcm::terminal::to_string "std::string
gdcm::to_string(Float data) ";

%feature("docstring")  gdcm::terminal::TYPETOENCODING "gdcm::TYPETOENCODING(SQ, VRBINARY, unsigned char) TYPETOENCODING(UN ";

%feature("docstring")  gdcm::terminal::to_string "std::string
gdcm::to_string(Float data) ";

%feature("docstring")  gdcm::terminal::TYPETOENCODING "gdcm::TYPETOENCODING(SQ, VRBINARY, unsigned char) TYPETOENCODING(UN ";


// File: namespacegdcm_1_1terminal.xml
%feature("docstring")  gdcm::terminal::setattribute "GDCM_EXPORT
std::string gdcm::terminal::setattribute(Attribute att) ";

%feature("docstring")  gdcm::terminal::setfgcolor "GDCM_EXPORT
std::string gdcm::terminal::setfgcolor(Color c) ";

%feature("docstring")  gdcm::terminal::setbgcolor "GDCM_EXPORT
std::string gdcm::terminal::setbgcolor(Color c) ";

%feature("docstring")  gdcm::terminal::setmode "GDCM_EXPORT void
gdcm::terminal::setmode(Mode m) ";

%feature("docstring")  gdcm::terminal::setattribute "GDCM_EXPORT
std::string gdcm::terminal::setattribute(Attribute att) ";

%feature("docstring")  gdcm::terminal::setbgcolor "GDCM_EXPORT
std::string gdcm::terminal::setbgcolor(Color c) ";

%feature("docstring")  gdcm::terminal::setfgcolor "GDCM_EXPORT
std::string gdcm::terminal::setfgcolor(Color c) ";

%feature("docstring")  gdcm::terminal::setmode "GDCM_EXPORT void
gdcm::terminal::setmode(Mode m) ";


// File: namespaceitk.xml


// File: namespacestd.xml


// File: namespacezlib__stream.xml
%feature("docstring")  zlib_stream::detail::isGZip "bool
zlib_stream::isGZip(std::istream &is)

Helper function to check whether stream is compressed or not. ";

%feature("docstring")  zlib_stream::detail::isGZip "bool
zlib_stream::isGZip(std::istream &is)

Helper function to check whether stream is compressed or not. ";


// File: namespacezlib__stream_1_1detail.xml


// File: gdcmAnonymizer_8h.xml


// File: gdcmApplicationEntity_8h.xml


// File: gdcmAttribute_8h.xml


// File: gdcmAudioCodec_8h.xml


// File: gdcmBasicOffsetTable_8h.xml


// File: gdcmByteBuffer_8h.xml


// File: gdcmByteSwap_8h.xml


// File: gdcmByteSwapFilter_8h.xml


// File: gdcmByteValue_8h.xml


// File: gdcmCodec_8h.xml


// File: gdcmCoder_8h.xml


// File: gdcmConstCharWrapper_8h.xml


// File: gdcmCP246ExplicitDataElement_8h.xml


// File: gdcmCSAElement_8h.xml


// File: gdcmCSAHeader_8h.xml


// File: gdcmCSAHeaderDict_8h.xml


// File: gdcmCSAHeaderDictEntry_8h.xml


// File: gdcmCurve_8h.xml


// File: gdcmDataElement_8h.xml


// File: gdcmDataSet_8h.xml


// File: gdcmDataSetHelper_8h.xml


// File: gdcmDecoder_8h.xml


// File: gdcmDefinedTerms_8h.xml


// File: gdcmDeflateStream_8h.xml


// File: gdcmDefs_8h.xml


// File: gdcmDeltaEncodingCodec_8h.xml


// File: gdcmDICOMDIR_8h.xml


// File: gdcmDict_8h.xml


// File: gdcmDictConverter_8h.xml


// File: gdcmDictEntry_8h.xml


// File: gdcmDictPrinter_8h.xml


// File: gdcmDicts_8h.xml


// File: gdcmDirectionCosines_8h.xml


// File: gdcmDirectory_8h.xml


// File: gdcmDumper_8h.xml


// File: gdcmElement_8h.xml


// File: gdcmEncapsulatedDocument_8h.xml


// File: gdcmEnumeratedValues_8h.xml


// File: gdcmException_8h.xml


// File: gdcmExplicitDataElement_8h.xml


// File: gdcmExplicitImplicitDataElement_8h.xml


// File: gdcmFiducials_8h.xml


// File: gdcmFile_8h.xml


// File: gdcmFileMetaInformation_8h.xml


// File: gdcmFilename_8h.xml


// File: gdcmFilenameGenerator_8h.xml


// File: gdcmFileSet_8h.xml


// File: gdcmFragment_8h.xml


// File: gdcmGlobal_8h.xml


// File: gdcmGroupDict_8h.xml


// File: gdcmIconImage_8h.xml


// File: gdcmImage_8h.xml


// File: gdcmImageApplyLookupTable_8h.xml


// File: gdcmImageChangePhotometricInterpretation_8h.xml


// File: gdcmImageChangePlanarConfiguration_8h.xml


// File: gdcmImageChangeTransferSyntax_8h.xml


// File: gdcmImageCodec_8h.xml


// File: gdcmImageConverter_8h.xml


// File: gdcmImageFragmentSplitter_8h.xml


// File: gdcmImageHelper_8h.xml


// File: gdcmImageReader_8h.xml


// File: gdcmImageToImageFilter_8h.xml


// File: gdcmImageWriter_8h.xml


// File: gdcmImplicitDataElement_8h.xml


// File: gdcmImplicitToExplicitFilter_8h.xml


// File: gdcmIOD_8h.xml


// File: gdcmIODEntry_8h.xml


// File: gdcmIODs_8h.xml


// File: gdcmIPPSorter_8h.xml


// File: gdcmItem_8h.xml


// File: gdcmJPEG12Codec_8h.xml


// File: gdcmJPEG16Codec_8h.xml


// File: gdcmJPEG2000Codec_8h.xml


// File: gdcmJPEG8Codec_8h.xml


// File: gdcmJPEGCodec_8h.xml


// File: gdcmJPEGLSCodec_8h.xml


// File: gdcmLO_8h.xml


// File: gdcmLookupTable_8h.xml


// File: gdcmMediaStorage_8h.xml


// File: gdcmModule_8h.xml


// File: gdcmModuleEntry_8h.xml


// File: gdcmModules_8h.xml


// File: gdcmNestedModuleEntries_8h.xml


// File: gdcmObject_8h.xml


// File: gdcmOrientation_8h.xml


// File: gdcmOverlay_8h.xml


// File: gdcmParseException_8h.xml


// File: gdcmParser_8h.xml


// File: gdcmPatient_8h.xml


// File: gdcmPDBElement_8h.xml


// File: gdcmPDBHeader_8h.xml


// File: gdcmPDFCodec_8h.xml


// File: gdcmPersonName_8h.xml


// File: gdcmPhotometricInterpretation_8h.xml


// File: gdcmPixelFormat_8h.xml


// File: gdcmPNMCodec_8h.xml


// File: gdcmPreamble_8h.xml


// File: gdcmPrinter_8h.xml


// File: gdcmPrivateTag_8h.xml


// File: gdcmPVRGCodec_8h.xml


// File: gdcmPythonFilter_8h.xml


// File: gdcmRAWCodec_8h.xml


// File: gdcmReader_8h.xml


// File: gdcmRescaler_8h.xml


// File: gdcmRLECodec_8h.xml


// File: gdcmScanner_8h.xml


// File: gdcmSegmentedPaletteColorLookupTable_8h.xml


// File: gdcmSequenceOfFragments_8h.xml


// File: gdcmSequenceOfItems_8h.xml


// File: gdcmSeries_8h.xml


// File: gdcmSmartPointer_8h.xml


// File: gdcmSOPClassUIDToIOD_8h.xml


// File: gdcmSorter_8h.xml


// File: gdcmSpectroscopy_8h.xml


// File: gdcmSplitMosaicFilter_8h.xml


// File: gdcmStaticAssert_8h.xml


// File: gdcmString_8h.xml


// File: gdcmStringFilter_8h.xml


// File: gdcmStudy_8h.xml


// File: gdcmSwapCode_8h.xml


// File: gdcmSwapper_8h.xml


// File: gdcmSystem_8h.xml


// File: gdcmTable_8h.xml


// File: gdcmTableEntry_8h.xml


// File: gdcmTableReader_8h.xml


// File: gdcmTag_8h.xml


// File: gdcmTagPath_8h.xml


// File: gdcmTerminal_8h.xml


// File: gdcmTesting_8h.xml


// File: gdcmTrace_8h.xml


// File: gdcmTransferSyntax_8h.xml


// File: gdcmType_8h.xml


// File: gdcmTypes_8h.xml


// File: gdcmUIDGenerator_8h.xml


// File: gdcmUIDs_8h.xml


// File: gdcmUNExplicitDataElement_8h.xml


// File: gdcmUNExplicitImplicitDataElement_8h.xml


// File: gdcmUnpacker12Bits_8h.xml


// File: gdcmValidate_8h.xml


// File: gdcmValue_8h.xml


// File: gdcmValueIO_8h.xml


// File: gdcmVersion_8h.xml


// File: gdcmVL_8h.xml


// File: gdcmVM_8h.xml


// File: gdcmVR_8h.xml


// File: gdcmVR16ExplicitDataElement_8h.xml


// File: gdcmWaveform_8h.xml


// File: gdcmWin32_8h.xml


// File: gdcmWriter_8h.xml


// File: gdcmXMLDictReader_8h.xml


// File: gdcmXMLPrivateDictReader_8h.xml


// File: itkGDCMImageIO2_8h.xml


// File: README_8txt.xml


// File: vtkGDCMImageReader_8h.xml


// File: vtkGDCMImageWriter_8h.xml


// File: vtkGDCMPolyDataReader_8h.xml


// File: vtkGDCMThreadedImageReader_8h.xml


// File: vtkGDCMThreadedImageReader2_8h.xml


// File: vtkImageColorViewer_8h.xml


// File: vtkImageMapToColors16_8h.xml


// File: vtkImageMapToWindowLevelColors2_8h.xml


// File: vtkImagePlanarComponentsToComponents_8h.xml


// File: vtkImageRGBToYBR_8h.xml


// File: vtkImageYBRToRGB_8h.xml


// File: vtkLookupTable16_8h.xml


// File: zipstreamimpl_8h.xml


// File: todo.xml


// File: deprecated.xml


// File: dir_db69beffeec17032a5f863eb4093fbd2.xml


// File: dir_3242dbbc61f73b2cca2dd79a8f23da1f.xml


// File: dir_bba9e5f9dbe82dc6c618e4155a6b7dfb.xml


// File: dir_ec724a2ef8b042b627dd477aa18cda4d.xml


// File: dir_8ce915f91d5b708117436b1bab1303d5.xml


// File: dir_56082a43b3d529dd8274f2932a56bf5f.xml


// File: dir_ad41a077929a29da2488a68722204820.xml


// File: dir_7ef9fe322c9a6da67a5b5ecffba7dad7.xml


// File: dir_fe3adf428d4428a191ea444e1468c8d7.xml


// File: dir_68fb4ccf39194a6c1b6980b964fc3056.xml


// File: dir_217ac082f0a8ef254a918e2f83522027.xml


// File: dir_afe0da99d9454278818946a15c05c018.xml


// File: PatchFile_8cxx-example.xml


// File: TestByteSwap_8cxx-example.xml


// File: TestReader_8cxx-example.xml


// File: TestReader_8py-example.xml


// File: indexpage.xml

